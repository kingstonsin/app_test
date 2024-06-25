import 'package:flutter/material.dart';

enum AppLocale {
  EN,
  ZH_TW,
  ZH_CN,
}

extension AppLocaleExtension on AppLocale {
  Locale get getLocale => switch (this) {
        AppLocale.EN => const Locale("en", "US"),
        AppLocale.ZH_TW => const Locale("zh", "TW"),
        AppLocale.ZH_CN => const Locale("zh", "CN"),
      };

  String get title => switch (this) {
        AppLocale.EN => "English",
        AppLocale.ZH_TW => "中文",
        AppLocale.ZH_CN => "中文", //TODO
      };

  String get apiLanguageCode => switch (this) {
        AppLocale.EN => "en",
        AppLocale.ZH_TW => "zh-TW",
        AppLocale.ZH_CN => "zh-CN",
      };
}
