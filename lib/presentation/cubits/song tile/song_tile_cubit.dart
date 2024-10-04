import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/common/injection/get_it.dart';
import 'package:test_app/data/model/song.dart';
import 'package:test_app/presentation/cubits/song%20tile/song_tile_state.dart';
import 'package:test_app/utils/logger.dart';
import 'package:video_player/video_player.dart';

class SongTileCubit extends Cubit<SongTileState> {
  SongTileCubit()
      : super(
          const SongTileState(),
        );
  VideoPlayerController? _videoPlayerController;

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

  Future<void> onPlayPreview({required Song song}) async {
    logD('SongTileCubit: onPlayPreview with $song');
    await _videoPlayerController?.pause();
    await _videoPlayerController?.dispose();
    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(song.previewUrl ?? ''));

    _videoPlayerController!.addListener(() {
      if (_videoPlayerController!.value.hasError) {
        logD(
            'Video has error: ${_videoPlayerController!.value.errorDescription}');
      }
      emit(state.copyWith(isPlaying: _videoPlayerController!.value.isPlaying));
    });

    try {
      await _videoPlayerController!.initialize();
      await _videoPlayerController!.play();
      emit(state.copyWith(
        isPlaying: true,
        currentPlayedSong: song.previewUrl,
      ));
    } catch (e) {
      logD('Error playing video: $e');
      emit(state.copyWith(isPlaying: false));
    }
  }

  void stopPreview() async {
    logD('SongTileCubit: stopPreview');
    await _videoPlayerController?.pause();
    emit(state.copyWith(isPlaying: false, currentPlayedSong: ''));
  }

  bool isFav({required Song song}) {
    logD('SongTileCubit: isFav');
    return favListRepoImp.favList.contains(song);
  }

  @override
  Future<void> close() {
    logD('SongTileCubit: close');
    _videoPlayerController?.dispose();
    return super.close();
  }
}
