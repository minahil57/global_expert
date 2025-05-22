import 'package:blepharoplasty/export.dart';

abstract final class LocalStorage {
  static SharedPreferences? _preferencesInstance;

  static SharedPreferences get _preferences {
    if (_preferencesInstance == null) {
      throw 'Call LocalStorage.init() to initialize local storage';
    }
    return _preferencesInstance!;
  }

  static Future<void> init() async {
    _preferencesInstance = await SharedPreferences.getInstance();
  }

  static Future<bool> saveData(String key, String data) async {
    return _preferences.setString(key, data);
  }

  static String? getData(String data) {
    return _preferences.getString(data);
  }

  static Future<bool> removeData(String data) async {
    return _preferences.remove(data);
  }

  static Future<bool> setBool({
    required String key,
    required bool value,
  }) async {
    return _preferences.setBool(key, value);
  }

  static bool? getBool({required String key}) {
    return _preferences.getBool(key);
  }

  static Future<bool> setList(String key, List<String> value) async {
    return _preferences.setStringList(key, value);
  }

  static List<String>? getList({required String key}) {
    return _preferences.getStringList(key);
  }

  static Future<bool> clearAllData() async {
    return _preferences.clear();
  }
}
