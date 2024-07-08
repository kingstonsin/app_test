part of 'fav_bloc.dart';

enum FavStatus {
  init,
  fetching,

  success,
  failure,
}

@freezed
class FavState with _$FavState {
  const factory FavState({
    @Default([]) List<Song>? favList,
    @Default(FavStatus.init) FavStatus? status,
  }) = _FavState;
}
