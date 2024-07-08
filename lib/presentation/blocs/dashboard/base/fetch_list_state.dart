part of 'fetch_list_bloc.dart';

class FetchListState<T> {}

class FetchListLoadMore<T> extends FetchListState<T> {
  final List<T> data;
  final int offset;
  final int limit;
  final String terms;
  String entity = 'All';
  FetchListLoadMore({
    required this.data,
    required this.offset,
    required this.limit,
    required this.terms,
    required this.entity,
  });
}

class FetchListInitial<T> extends FetchListState<T> {}

class FetchListLoading<T> extends FetchListState<T> {}

class FetchListLoaded<T> extends FetchListState<T> {
  final List<T> data;
  final int offset;
  final int limit;
  final String terms;
  String entity = 'All';
  FetchListLoaded({
    required this.data,
    required this.offset,
    required this.limit,
    required this.terms,
    required this.entity,
  });
}

class FetchListError<T> extends FetchListState<T> {
  final Object? error;
  FetchListError(this.error);
}
