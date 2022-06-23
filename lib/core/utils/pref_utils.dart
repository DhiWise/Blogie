import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

// ignore_for_file: must_be_immutable
class PrefUtils {
  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  static SharedPreferences? _sharedPreferences;

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<void> setUserId(String value) {
    return _sharedPreferences!.setString('userId', value);
  }

  String getUserId() {
    try {
      return _sharedPreferences!.getString('userId') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setEmail(String value) {
    return _sharedPreferences!.setString('email', value);
  }

  String getEmail() {
    try {
      return _sharedPreferences!.getString('email') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setUserid(String value) {
    return _sharedPreferences!.setString('userid', value);
  }

  String getUserid() {
    try {
      return _sharedPreferences!.getString('userid') ?? '';
    } catch (e) {
      return '';
    }
  }
}
