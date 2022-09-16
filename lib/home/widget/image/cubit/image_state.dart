part of 'image_cubit.dart';

enum ImageStatus { initial, loading, success, failure }

class ImageState extends Equatable {
  const ImageState({
    this.status = ImageStatus.initial,
    this.photos = const [],
  });

  final List<Photo> photos;
  final ImageStatus status;

  @override
  List<Object?> get props => [status, photos];
}
