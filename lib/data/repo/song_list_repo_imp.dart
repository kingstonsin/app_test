import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/common/enums/locale_enum.dart';
import 'package:test_app/common/injection/get_it.dart';
import 'package:test_app/data/model/song.dart';
import 'package:test_app/data/repo/song_list_repo.dart';
import 'package:test_app/presentation/cubits/locale/locale_cubit.dart';
import 'package:test_app/utils/logger.dart';

class SongListRepoImp extends SongListRepo {
  @override
  Future<List<Song>> getSongList<String>({
    required String offset,
    required String limit,
    required String terms,
  }) async {
    //TODO url encode terms / filtering kerywords...
    final Response response = await dioService.get(
      'search?term=$terms&limit=$limit&offset=$offset&lang=${globalContext.read<LocaleCubit>().currentLocale!.apiLanguageCode}',
    );

    logD(' RESULT = ${response.data}');
    // Song.fromJson(response.data.results);
    if (response.data != null) {
      return SongList.fromJson(jsonDecode(response.data!)).results;
    } else {
      return [];
    }
  }
}
