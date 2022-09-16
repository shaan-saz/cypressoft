part of 'home_cubit.dart';

enum HomeStatus { initial, loading, success, failure }

class HomeState extends Equatable {
  const HomeState({
    this.status = HomeStatus.initial,
    this.albums = const [],
  });

  final List<Album> albums;
  final HomeStatus status;

  @override
  List<Object?> get props => [status, albums];
}
