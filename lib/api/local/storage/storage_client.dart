import 'package:shared_preferences/shared_preferences.dart';

import 'i_storage_client.dart';

class StorageClient implements IStorageClient {
  static StorageClient? _instance;

  StorageClient._(this._prefs);

  final SharedPreferences _prefs;

  static StorageClient get instance => _instance != null ? _instance! : throw Exception("Initialize storage first!");

  static Future<IStorageClient> initLocalStorage() async {
    if (_instance == null) {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      _instance = StorageClient._(preferences);
    }
    return _instance!;
  }

  @override
  Future<void> delete(String key) async {
    await _prefs.remove(key);
  }

  @override
  Future<Object?> get(String key) async {
    return _prefs.get(key);
  }

  @override
  Future<void> save(String key, Object? value) async {
    if (value is bool) {
      await _prefs.setBool(key, value);
    } else if (value is String) {
      await _prefs.setString(key, value);
    } else if (value is double) {
      await _prefs.setDouble(key, value);
    } else if (value is int) {
      await _prefs.setInt(key, value);
    } else if (value is List<String>) {
      await _prefs.setStringList(key, value);
    } else {
      throw AssertionError("value must be of type String, boolean, int, List<String> or double");
    }
  }

  @override
  Future<void> deleteAll() async {
    await _prefs.clear();
  }
}
