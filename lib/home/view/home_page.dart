import 'package:cypressoft_task/data/repositories/api_repository.dart';
import 'package:cypressoft_task/home/cubit/home_cubit.dart';
import 'package:cypressoft_task/home/widget/image/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(
        context.read<DataRepository>(),
      )..initHome(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          switch (state.status) {
            case HomeStatus.initial:
              return const SizedBox();
            case HomeStatus.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case HomeStatus.success:
              return ListView.builder(
                key: Key('${state.albums.length}'),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              state.albums[index % 4].title,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 100,
                              child: ImageBox.widget(
                                  albumId: state.albums[index % 4].id),
                            )
                          ],
                        ),
                      ),
                      const Divider()
                    ],
                  );
                },
              );
            case HomeStatus.failure:
              return const Center(
                child: Text('Something went wrong, try again.'),
              );
          }
        },
      ),
    );
  }
}
