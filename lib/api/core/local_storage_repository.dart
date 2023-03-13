// Package imports:
import 'package:shared_preferences/shared_preferences.dart';

const String tokenStorageKey = 'token';
const String invitationCodeStorageKey = 'invitationCode';

class LocalStorageRepository {
  final SharedPreferences sharedPreferences;

  LocalStorageRepository._internal({required this.sharedPreferences});

  static Future<LocalStorageRepository> getInstance() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return LocalStorageRepository._internal(
      sharedPreferences: sharedPreferences,
    );
  }

  bool containsKey(String key) {
    return sharedPreferences.containsKey(key);
  }

  String getString(String key) {
    return sharedPreferences.get(key) as String;
  }

  Future<bool> saveString(String key, String value) {
    return sharedPreferences.setString(key, value);
  }

  Future<bool> deleteKey(String key) {
    return sharedPreferences.remove(key);
  }
}
