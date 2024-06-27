import 'package:test_app/data/model/song.dart';

abstract class SongListRepo {
  Future<List<Song>> getSongList<int, String>(
      int offset, int limit, String keyword);
}
