// Package imports:
import 'package:shared_preferences/shared_preferences.dart';

const String tokenStorageKey = 'token';
const String invitationCodeStorageKey = 'invitationCode';

class LocalStorageRepository {
  final SharedPreferences _sharedPreferences;

  LocalStorageRepository._internal({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  static Future<LocalStorageRepository> getInstance() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return LocalStorageRepository._internal(
      sharedPreferences: sharedPreferences,
    );
  }

  bool containsKey(String key) {
    return _sharedPreferences.containsKey(key);
  }

  String getString(String key) {
    return _sharedPreferences.get(key) as String;
  }

  Future<bool> saveString(String key, String value) {
    return _sharedPreferences.setString(key, value);
  }

  Future<bool> deleteKey(String key) {
    return _sharedPreferences.remove(key);
  }
}
