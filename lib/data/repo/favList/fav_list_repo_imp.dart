import 'package:test_app/common/injection/get_it.dart';
import 'package:test_app/data/model/song.dart';
import 'package:test_app/data/repo/favList/fav_list_repo.dart';

class FavListRepoImp extends FavListRepo {
  @override
  List<Song> get favList => [];

  @override
  Future<void> getFavList() async {
    List<Song> data = await sharePref.getFav();

    if (data.isNotEmpty) {
      favList = data;
      return favListToStream(favList);
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
    favListToStream(updatedList);
    await setFavList();
  }

  Future<void> removeFav({required Song song}) async {
    final updatedList = favList.where((s) => s != song).toList();
    favListToStream(updatedList);
    await setFavList();
  }
}
