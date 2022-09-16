import 'package:bloc/bloc.dart';
import 'package:cypressoft_task/data/models/photo.dart';
import 'package:cypressoft_task/data/repositories/api_repository.dart';
import 'package:equatable/equatable.dart';

part 'image_state.dart';

class ImageCubit extends Cubit<ImageState> {
  ImageCubit(this._dataRepository) : super(const ImageState());

  final DataRepository _dataRepository;

  Future<void> fetchImage({required int albumId}) async {
    emit(const ImageState(status: ImageStatus.loading));
    try {
      final photos = await _dataRepository.fetchPhotos(albumId: albumId);
      emit(
        ImageState(
          status: ImageStatus.success,
          photos: photos,
        ),
      );
    } catch (e) {
      emit(
        const ImageState(
          status: ImageStatus.failure,
        ),
      );
    }
  }
}
