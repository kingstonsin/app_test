import 'package:test_app/data/model/song.dart';
import 'package:test_app/data/repo/song_list_repo.dart';

class SongListRepoImp extends SongListRepo {
  @override
  Future<List<Song>> getSongList<int, String>(
      int offset, int limit, String keyword) async {
    return [
      //TODO Get api
    ];
  }
}
