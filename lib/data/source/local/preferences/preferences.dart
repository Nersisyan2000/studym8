import 'package:flutter_application_2/data/source/local/preferences/preferences_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  Preferences._();

  static SharedPreferences? _sharedInstance;

  static SharedPreferences? get sharedInstance => _sharedInstance;

  static Future<void> get sharedPrefernces async {
    _sharedInstance ??= await SharedPreferences.getInstance();
  }

  static Future<void> setOnBoard(bool newValue) async {
    _sharedInstance?.setBool(PreferencesKeys.isOnboard, newValue);
  }

  static Future<void> removeOnBoard() async {
    _sharedInstance?.remove(PreferencesKeys.isOnboard);
  }

  static bool get getOnBoard =>
      _sharedInstance?.getBool(PreferencesKeys.isOnboard) ?? false;
}
