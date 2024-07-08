import 'package:test_app/data/model/song.dart';

abstract class SongListRepo {
  Future<List<Song>> getSongList<String>({
    required String offset,
    required String limit,
    required String terms,
    required String entity,
  });
}
