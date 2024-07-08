import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:test_app/data/local_storage/share_pref.dart';
import 'package:test_app/data/repo/favList/fav_list_repo_imp.dart';
import 'package:test_app/data/repo/songList/song_list_repo_imp.dart';
import 'package:test_app/main.dart';
import 'package:test_app/services/api/api_service.dart';
import 'package:test_app/services/navigation/navigation_service.dart';

GetIt getIt = GetIt.instance;
Future<void> setupGetIt() async {
  getIt.registerSingleton<NavigationService>(NavigationService());
  getIt.registerSingleton<SharePref>(SharePref());
  getIt.registerSingleton<SongListRepoImp>(SongListRepoImp());
  getIt.registerSingleton<FavListRepoImp>(FavListRepoImp());

  getIt.registerSingleton<DioService>(DioService());
}

BuildContext globalContext = getIt<NavigationService>().getContext();
l10n() => AppLocalizations.of(globalContext)!;
SharePref sharePref = getIt<SharePref>();
SongListRepoImp songListRepoImp = getIt<SongListRepoImp>();
FavListRepoImp favListRepoImp = getIt<FavListRepoImp>();
DioService dioService = getIt<DioService>();
