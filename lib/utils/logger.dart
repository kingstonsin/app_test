import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

const String _tag = "";

var _logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
  ),
);

void logD(String msg) {
  _logger.d("$_tag :: $msg");
}

void logI(String msg) {
  _logger.i("$_tag :: $msg");
}

void logW(String msg) {
  _logger.w("$_tag :: $msg");
}

void logE(String msg) {
  _logger.e("$_tag :: $msg");
}

void logF(String msg) {
  _logger.f("$_tag :: $msg");
}

void logT(String msg) {
  _logger.t("$_tag :: $msg");
}

void printWrapped(String text, {bool shouldWrapped = true}) {
  if (shouldWrapped == true) {
    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => debugPrint(match.group(0)));
  } else {
    debugPrint(text);
  }
}
