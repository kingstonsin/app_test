part of 'fetch_list_bloc.dart';

class FetchListState<T> {
  int offset = 0;
  int limit = 20;
  String keyword = '';
}

class FetchListInitial<T> extends FetchListState<T> {}

class FetchListLoading<T> extends FetchListState<T> {}

class FetchListLoaded<T> extends FetchListState<T> {
  final List<T> data;
  FetchListLoaded(
    this.data,
  );
}

class FetchListError<T> extends FetchListState<T> {
  final Object? error;
  FetchListError(this.error);
}
