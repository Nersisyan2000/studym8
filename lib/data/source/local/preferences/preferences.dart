import 'package:flutter_application_2/data/source/local/preferences/preferences_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  Preferences._();

  static SharedPreferences? _sharedPreferences;

  static Future<void> get sharedPrefernces async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
  }

  static Future<void> setOnBoard(bool newValue) async {
    _sharedPreferences?.setBool(PreferencesKeys.isOnboard, newValue);
  }

  static bool? get getOnBoard =>
      _sharedPreferences?.getBool(PreferencesKeys.isOnboard);
}
