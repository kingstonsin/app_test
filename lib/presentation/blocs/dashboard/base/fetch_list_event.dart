part of 'fetch_list_bloc.dart';

@freezed
class FetchListEvent<T> with _$FetchListEvent {
  //TODO add entity for filtering

  const factory FetchListEvent.getData(
      {required int offset,
      required int limit,
      required String terms}) = GetDataEvent;

  const factory FetchListEvent.loadMore(
      //TODO add entity for filtering
      {required int offset,
      required int limit,
      required String terms,
      required List<T> data}) = LoadMoreEvent;

  //add event accordingly
}
