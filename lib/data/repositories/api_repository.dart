import 'package:cypressoft_task/data/models/album.dart';
import 'package:cypressoft_task/data/models/photo.dart';
import 'package:cypressoft_task/data/providers/api_client.dart';
import 'package:cypressoft_task/data/providers/isar_database.dart';
import 'package:cypressoft_task/data/providers/shared_prefs.dart';

class DataRepository {
  DataRepository({
    DataAPI? dataAPI,
    IsarDatabase? isarDatabase,
    SharedPreferencesClient? sharedPreferencesClient,
  })  : _dataAPI = dataAPI ?? DataAPI(),
        _isarDatabase = isarDatabase ?? IsarDatabase(),
        _sharedPreferencesClient =
            sharedPreferencesClient ?? SharedPreferencesClient();

  final DataAPI _dataAPI;
  final IsarDatabase _isarDatabase;
  final SharedPreferencesClient _sharedPreferencesClient;

  Future<void> initialize() async {
    await _isarDatabase.openIsar();
    await _sharedPreferencesClient.initSharedPrefs();
  }

  Future<List<Album>> fetchAlbums() async {
    final isFirstTime = await _sharedPreferencesClient.isFirstTimeAlbum();
    if (isFirstTime) {
      final albums = await _dataAPI.fetchAlbums();
      await _isarDatabase.saveAlbums(albums: albums);
      await _sharedPreferencesClient.setFirstTimeAlbum();
      return albums;
    } else {
      return await _isarDatabase.fetchAlbums();
    }
  }

  Future<List<Photo>> fetchPhotos({required int albumId}) async {
    final isFirstTime = await _sharedPreferencesClient.isFirstTimePhoto();
    if (isFirstTime) {
      final photos = await _dataAPI.fetchPhotos(albumId: albumId);
      await _isarDatabase.savePhotos(photos: photos);
      await _sharedPreferencesClient.setFirstTimePhoto();
      return photos;
    } else {
      return await _isarDatabase.fetchPhotos();
    }
  }
}
