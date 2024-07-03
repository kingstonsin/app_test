part of 'locale_cubit.dart';

@immutable
abstract class LocaleState {
  final AppLocale? locale;

  const LocaleState({
    this.locale,
  });
}

class SetAppLocale extends LocaleState {
  const SetAppLocale({super.locale});
}

class LoadingState extends LocaleState {
  const LoadingState({super.locale});
}

class LoadedState extends LocaleState {
  const LoadedState({super.locale});
}
