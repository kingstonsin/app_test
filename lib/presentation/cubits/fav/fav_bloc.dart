import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:test_app/common/injection/get_it.dart';
import 'package:test_app/data/model/song.dart';
import 'package:test_app/utils/logger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fav_bloc.freezed.dart';
part 'fav_event.dart';
part 'fav_state.dart';

class FavBloc extends Bloc<FavEvent, FavState> {
  late StreamSubscription _subscription;

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }

  FavBloc() : super(const FavState()) {
    on<FavEvent>(
      (event, emit) {},
    );
    on<Init>(_init);
    on<FetchData>(_fetchData);
    on<RemoveData>(_removeData);
  }

  Future<void> _init(Init event, Emitter<FavState> emit) async {
    logD("Subscribe Application list");
    _subscription = favListRepoImp.songList.listen(
      (list) {
        emit(state.copyWith(favList: list));
      },
      onError: (error) => emit(state.copyWith(
        favList: [],
      )),
    );
  }

  Future<void> _fetchData(FetchData event, Emitter<FavState> emit) async {
    favListRepoImp.getFavList();
  }

  Future<void> _removeData(RemoveData event, Emitter<FavState> emit) async {
    favListRepoImp.removeFav(song: event.song);
  }
}
