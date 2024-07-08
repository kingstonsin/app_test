import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/common/injection/get_it.dart';
import 'package:test_app/data/model/song.dart';
import 'package:test_app/presentation/cubits/song%20tile/song_tile_state.dart';
import 'package:test_app/utils/logger.dart';

class SongTileCubit extends Cubit<SongTileState> {
  SongTileCubit()
      : super(
          const SongTileState(),
        );

  Future<void> onAddToFav({required Song song}) async {
    logD('SongTileCubit: onAddToFav with $song');
    favListRepoImp.addToFav(song: song);
    emit(state.copyWith(count: favListRepoImp.favList.length));
  }

  Future<void> onRemoveFav({required Song song}) async {
    logD('SongTileCubit: onRemoveFav with $song');
    favListRepoImp.removeFav(song: song);
    emit(state.copyWith(count: favListRepoImp.favList.length));
  }

  bool isFav({required Song song}) {
    logD('SongTileCubit: isFav');
    return favListRepoImp.favList.contains(song);
  }

  @override
  Future<void> close() {
    logD('SongTileCubit: close');
    return super.close();
  }
}
