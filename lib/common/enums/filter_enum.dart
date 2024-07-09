import 'package:test_app/common/injection/get_it.dart';

enum MediaType {
  movie,
  podcast,
  music,
  musicVideo,
  audiobook,
  shortFilm,
  tvShow,
  software,
  ebook,
  all,
}

extension MediaTypeExtension on MediaType {
  String get getLabel => switch (this) {
        MediaType.movie => l10n().movie,
        MediaType.podcast => l10n().podcast,
        MediaType.music => l10n().music,
        MediaType.musicVideo => l10n().music_video,
        MediaType.audiobook => l10n().audio_book,
        MediaType.shortFilm => l10n().short_film,
        MediaType.tvShow => l10n().tv_show,
        MediaType.software => l10n().software,
        MediaType.ebook => l10n().ebook,
        MediaType.all => l10n().all,
      };

  String get getParam => switch (this) {
        MediaType.movie => 'movie',
        MediaType.podcast => 'podcast',
        MediaType.music => 'musicTrack',
        MediaType.musicVideo => 'musicVideo',
        MediaType.audiobook => 'audiobook',
        MediaType.shortFilm => 'shortFilm',
        MediaType.tvShow => 'tvShow',
        MediaType.software => 'software',
        MediaType.ebook => 'ebook',
        MediaType.all => '',
      };
}



//add media type accordingly
