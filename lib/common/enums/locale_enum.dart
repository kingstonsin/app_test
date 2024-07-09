import 'package:flutter/material.dart';
import 'package:test_app/common/injection/get_it.dart';

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
        AppLocale.EN => l10n().english,
        AppLocale.ZH_TW => l10n().traditional_chinese,
        AppLocale.ZH_CN => l10n().simplified_chinese,
      };

  String get apiLanguageCode => switch (this) {
        AppLocale.EN => "en_us",
        AppLocale.ZH_TW => "zh_tw",
        AppLocale.ZH_CN => "zh_cn",
      };
}
