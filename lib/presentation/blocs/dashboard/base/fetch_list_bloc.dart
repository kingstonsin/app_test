import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/utils/logger.dart';

part 'fetch_list_event.dart';
part 'fetch_list_state.dart';
part 'fetch_list_bloc.freezed.dart';

class FetchListBloc<T> extends Bloc<FetchListEvent, FetchListState<T>> {
  FetchListBloc(
    Future<List<T>> Function(int offset, int limit, String terms)
        futureFunction,
  ) : super(FetchListInitial()) {
    on<GetDataEvent>((event, emit) async {
      try {
        emit(FetchListLoading());
        final data =
            await futureFunction(event.offset, event.limit, event.terms);
        emit(FetchListLoaded(
            data: data,
            offset: event.offset,
            limit: event.limit,
            terms: event.terms));
      } catch (err) {
        logE('Error caught on getDataEvent $err');
        emit(FetchListError(err));
      }
    });

    on<LoadMoreEvent>((event, emit) async {
      try {
        final data =
            await futureFunction((event.offset + 20), event.limit, event.terms);

        if (data.isNotEmpty) {
          final newData = List<T>.from(event.data);
          newData.addAll(data);
          emit(
            FetchListLoaded(
              data: newData,
              offset: (event.offset + 20),
              limit: event.limit,
              terms: event.terms,
            ),
          );
        } else {
          emit(
            FetchListLoaded(
              data: event.data as List<T>,
              offset: (event.offset),
              limit: event.limit,
              terms: event.terms,
            ),
          );
        }
      } catch (err) {
        logE('Error caught on getDataEvent $err');
        emit(FetchListError(err));
      }
    });

    onCreate();
  }
  void onCreate() {
    /// initialize data
    add(const GetDataEvent(offset: 20, limit: 20, terms: ''));
  }

  void cleanCached() {
    //TODO if needed
  }
}
