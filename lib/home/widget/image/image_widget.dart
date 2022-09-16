import 'package:cached_network_image/cached_network_image.dart';
import 'package:cypressoft_task/data/repositories/api_repository.dart';
import 'package:cypressoft_task/home/widget/image/cubit/image_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageBox extends StatelessWidget {
  const ImageBox._();

  static Widget widget({required int albumId}) {
    return Builder(
      builder: (context) {
        return BlocProvider(
          create: (_) => ImageCubit(context.read<DataRepository>())
            ..fetchImage(albumId: albumId),
          child: const ImageBox._(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageCubit, ImageState>(
      builder: (context, state) {
        switch (state.status) {
          case ImageStatus.initial:
            return const SizedBox();
          case ImageStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case ImageStatus.success:
            return ListView.builder(
              key: Key('${state.photos.length}'),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    SizedBox(
                      height: 200,
                      width: 100,
                      child: CachedNetworkImage(
                        imageUrl: state.photos[index % 3].url,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    )
                  ],
                );
              },
            );
          case ImageStatus.failure:
            return const Center(
              child: Text('Something went wrong, try again.'),
            );
        }
      },
    );
  }
}
