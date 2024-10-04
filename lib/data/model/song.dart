import 'package:freezed_annotation/freezed_annotation.dart';
part 'song.freezed.dart';

part 'song.g.dart';

@freezed
class SongList with _$SongList {
  factory SongList({
    int? resultCount,
    @Default([]) List<Song> results,
  }) = _SongList;

  factory SongList.fromJson(Map<String, dynamic> json) =>
      _$SongListFromJson(json);
}

@freezed
class Song with _$Song {
  const factory Song({
    String? wrapperType,
    String? artistName,
    String? trackName,
    String? artworkUrl60,
    String? primaryGenreName,
    String? previewUrl,
  }) = _Song;

  factory Song.fromJson(Map<String, Object?> json) => _$SongFromJson(json);
}
