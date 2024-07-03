import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/presentation/cubits/setting/setting_state.dart';
import 'package:test_app/utils/logger.dart';

class SettingCubit extends Cubit<SettingState> {
  SettingCubit()
      : super(
          SettingState(settingStatus: SettingStatus.init),
        );

  Future<void> onTapOption({required String key}) async {
    logD('Setting Cubit: onTapOption with $key');
    switch (key) {
      case 'language':
        emit(state.copyWith(settingStatus: SettingStatus.onLanguage));
      //TODO add options accordingly
    }
  }

  @override
  Future<void> close() {
    logD('Setting Cubit: close');
    return super.close();
  }
}
