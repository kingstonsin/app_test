import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_list_event.dart';
part 'fetch_list_state.dart';
part 'fetch_list_bloc.freezed.dart';

class FetchListBloc<T> extends Bloc<FetchListEvent, FetchListState<T>> {
  FetchListBloc(
    Future<List<T>> Function(int offset, int limit, String keyword)
        futureFunction,
  ) : super(FetchListInitial()) {
    on<GetDataEvent>((event, emit) async {
      try {
        emit(FetchListLoading());
        final data =
            await futureFunction(event.offset, event.limit, event.keyword);
        emit(FetchListLoaded(data));
      } catch (err) {
        emit(FetchListError(err));
      }
    });

    onCreate();
  }
  void onCreate() {
    /// initialize data
    //TODO set param
    add(const GetDataEvent(offset: 20, limit: 20, keyword: ''));
  }
}
