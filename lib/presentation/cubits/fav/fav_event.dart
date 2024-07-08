part of 'fav_bloc.dart';

@freezed
class FavEvent with _$FavEvent {
  const factory FavEvent.init() = Init;
  const factory FavEvent.fetchData() = FetchData;
  const factory FavEvent.removeData({required Song song}) = RemoveData;
}
