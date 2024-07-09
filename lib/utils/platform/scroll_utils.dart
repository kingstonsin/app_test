import 'dart:io';

import 'package:flutter/widgets.dart';

ScrollPhysics _defaultScrollBehaviour = getScrollBehaviour();

get defaultScrollBehaviour => _defaultScrollBehaviour;

ScrollPhysics getScrollBehaviour() {
  if (Platform.isAndroid) {
    return const BouncingScrollPhysics();
  } else {
    return const AlwaysScrollableScrollPhysics();
  }
}
