import 'dart:io';

import 'package:cypressoft_task/data/models/album.dart';
import 'package:cypressoft_task/data/models/photo.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarDatabase {
  late final Isar _isar;

  Future<void> openIsar() async {
    Directory? dir;

    dir = await getApplicationSupportDirectory();

    _isar = await Isar.open(
      schemas: [PhotoSchema, AlbumSchema],
      directory: dir.path,
    );
  }

  Future<List<Album>> fetchAlbums() async {
    final albums = await _isar.albums.where().findAll();
    return albums;
  }

  Future<void> saveAlbums({
    required List<Album> albums,
  }) async {
    await _isar.writeTxn((isar) async {
      await isar.albums.putAll(albums);
    });
  }

  Future<List<Photo>> fetchPhotos() async {
    final photos = await _isar.photos.where().findAll();
    return photos;
  }

  Future<void> savePhotos({
    required List<Photo> photos,
  }) async {
    await _isar.writeTxn((isar) async {
      await isar.photos.putAll(photos);
    });
  }
}
