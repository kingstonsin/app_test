import 'package:test_app/common/injection/get_it.dart';
import 'package:test_app/data/model/song.dart';
import 'package:test_app/data/repo/favList/fav_list_repo.dart';

class FavListRepoImp extends FavListRepo {
  List<Song> _favList = [];

  @override
  List<Song> get favList => _favList;

  @override
  Future<void> getFavList() async {
    List<Song> data = await sharePref.getFav();

    if (data.isNotEmpty) {
      _favList = data;
      return favListToStream(data);
    } else {
      return favListToStream([]);
    }
  }

  @override
  Future<void> setFavList() async {
    await sharePref.setFav(favList);
  }

  Future<void> addToFav({required Song song}) async {
    final updatedList = [...favList, song];
    _favList = updatedList;
    favListToStream(updatedList);
    await setFavList();
  }

  Future<void> removeFav({required Song song}) async {
    final updatedList = favList.where((s) => s != song).toList();
    _favList = updatedList;
    favListToStream(updatedList);
    await setFavList();
  }
}
