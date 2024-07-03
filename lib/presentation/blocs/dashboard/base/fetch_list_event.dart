part of 'fetch_list_bloc.dart';

@freezed
class FetchListEvent with _$FetchListEvent {
  const factory FetchListEvent.getData(
      {required int offset,
      required int limit,
      required String terms}) = GetDataEvent;

  //add event accordingly
}
