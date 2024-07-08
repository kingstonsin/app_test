import 'dart:async';

import 'package:test_app/data/model/song.dart';

abstract class FavListRepo {
  Future<void> getFavList();
  Future<void> setFavList();

  late List<Song> favList;

  final _favListStream =
      StreamController<List<Song>>.broadcast(); //for multiple subscriber
  Stream<List<Song>> get songList => _favListStream.stream.asBroadcastStream();
  void favListToStream(List<Song> songList) =>
      _favListStream.sink.add(songList);
}
