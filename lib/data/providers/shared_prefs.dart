import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesClient {
  late SharedPreferences _sharedPreferences;

  static Future<SharedPreferencesClient> create() async {
    final component = SharedPreferencesClient();
    await component.initSharedPrefs();
    return component;
  }

  Future<SharedPreferences> initSharedPrefs() async =>
      _sharedPreferences = await SharedPreferences.getInstance();

  Future<bool> isFirstTimeAlbum() async {
    return await _sharedPreferences.getBool('firstTimeAlbum') ?? true;
  }

  Future<bool> isFirstTimePhoto() async {
    return await _sharedPreferences.getBool('firstTimePhoto') ?? true;
  }

  Future<void> setFirstTimeAlbum() async {
    await _sharedPreferences.setBool('firstTimeAlbum', true);
  }

  Future<void> setFirstTimePhoto() async {
    await _sharedPreferences.setBool('firstTimePhoto', true);
  }
}
