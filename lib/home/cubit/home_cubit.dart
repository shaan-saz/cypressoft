import 'dart:developer';

import 'package:cypressoft_task/data/models/album.dart';
import 'package:cypressoft_task/data/repositories/api_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._dataRepository) : super(const HomeState());

  final DataRepository _dataRepository;

  Future<void> initHome() async {
    emit(const HomeState(status: HomeStatus.loading));
    try {
      final albums = await _dataRepository.fetchAlbums();
      emit(
        HomeState(
          status: HomeStatus.success,
          albums: albums,
        ),
      );
    } catch (e) {
      log(e.toString());
      emit(
        const HomeState(
          status: HomeStatus.failure,
        ),
      );
    }
  }
}
