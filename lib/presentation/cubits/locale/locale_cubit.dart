import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:test_app/common/enums/locale_enum.dart';
import 'package:test_app/common/injection/get_it.dart';
import 'package:test_app/utils/logger.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  late AppLocale? currentLocale;

  LocaleCubit() : super(const SetAppLocale()) {
    initLocale();
  }

  initLocale() {
    logD('locale cubit: init');
    currentLocale = sharePref.getLocale();
    emit(SetAppLocale(locale: currentLocale));
  }

  onChangeLocale(AppLocale locale) async {
    logD('locale cubit: onChangeLocale');
    emit(LoadingState(locale: currentLocale));
    await Future.delayed(const Duration(milliseconds: 500));
    sharePref.setLocale(locale);
    emit(SetAppLocale(locale: locale));
  }
}
