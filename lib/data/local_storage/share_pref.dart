import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_app/common/enums/locale_enum.dart';
import 'package:test_app/data/model/song.dart';
import 'package:test_app/utils/logger.dart';

const localeKey = "locale";
const favListKey = "fav";

class SharePref {
  static SharedPreferences? _sharedPreferences;

  SharePref() {
    // init();
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    if (kDebugMode) {
      print('SharedPreference Initialized');
    }
  }

  ///will clear all the data stored in preference
  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<void> setThemeData(String value) {
    return _sharedPreferences!.setString('themeData', value);
  }

  String getThemeData() {
    try {
      return _sharedPreferences!.getString('themeData')!;
    } catch (e) {
      return 'primary';
    }
  }

  Future<void> setFav(List<Song> value) async {
    logD('setFav... ');
    final jsonList = json.encode(value.map((e) => e.toJson()).toList());
    await _sharedPreferences!.setString(favListKey, jsonList);
  }

  Future<List<Song>> getFav() async {
    final jsonList = _sharedPreferences!.getString(favListKey);
    if (jsonList != null && jsonList != '[]') {
      final List<dynamic> jsonData = json.decode(jsonList);
      final List<Song> songs = jsonData
          .map((dynamic item) => Song.fromJson(item as Map<String, dynamic>))
          .toList();

      return songs;
    } else {
      return [];
    }
  }

  Future<void> setLocale(AppLocale value) {
    logD('setLocale... ');
    return _sharedPreferences!.setInt(localeKey, value.index);
  }

  AppLocale? getLocale() {
    try {
      final int index = _sharedPreferences!.getInt(localeKey) ?? -1;
      if (index != -1) {
        return AppLocale.values[index];
      } else {
        /// Default EN if device is not zh
        final String defaultLocale = Platform.localeName.split('_').first;
        AppLocale locale;
        if (defaultLocale.contains('zh')) {
          if (Platform.localeName.split('_')[1].contains('TW')) {
            locale = AppLocale.ZH_TW;
          } else {
            locale = AppLocale.ZH_CN;
          }
        } else {
          locale = AppLocale.EN;
        }
        _sharedPreferences!.setInt(localeKey, locale.index);
        return locale;
      }
    } catch (e) {
      logD('$e');
      return null;
    }
  }
}
