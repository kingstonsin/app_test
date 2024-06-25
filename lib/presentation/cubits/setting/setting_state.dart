enum SettingStatus {
  init,
  onLanguage,
  //TODO add other options
}

class SettingState {
  final SettingStatus settingStatus;

  SettingState({
    required this.settingStatus,
  });

  SettingState copyWith({
    SettingStatus? settingStatus,
  }) {
    return SettingState(
      settingStatus: settingStatus ?? this.settingStatus,
    );
  }
}
