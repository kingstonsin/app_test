part of 'fetch_list_bloc.dart';

class FetchListState<T> {
  String entity = '';
}

class FetchListLoadMore<T> extends FetchListState<T> {
  final List<T> data;
  final int offset;
  final int limit;
  final String terms;
  FetchListLoadMore({
    required this.data,
    required this.offset,
    required this.limit,
    required this.terms,
  });
}

class FetchListInitial<T> extends FetchListState<T> {}

class FetchListLoading<T> extends FetchListState<T> {}

class FetchListLoaded<T> extends FetchListState<T> {
  final List<T> data;
  final int offset;
  final int limit;
  final String terms;
  FetchListLoaded({
    required this.data,
    required this.offset,
    required this.limit,
    required this.terms,
  });
}

class FetchListError<T> extends FetchListState<T> {
  final Object? error;
  FetchListError(this.error);
}
