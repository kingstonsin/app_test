part of 'fetch_list_bloc.dart';

@freezed
class FetchListEvent<T> with _$FetchListEvent {
  const factory FetchListEvent.getData({
    required int offset,
    required int limit,
    required String terms,
    required String entity,
  }) = GetDataEvent;

  const factory FetchListEvent.loadMore(
      //TODO add entity for filtering
      {
    required int offset,
    required int limit,
    required String terms,
    required String entity,
    required List<T> data,
  }) = LoadMoreEvent;

  //add event accordingly
}
