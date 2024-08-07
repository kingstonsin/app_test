import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/common/enums/locale_enum.dart';
import 'package:test_app/common/injection/get_it.dart';
import 'package:test_app/data/model/song.dart';
import 'package:test_app/data/repo/songList/song_list_repo.dart';
import 'package:test_app/presentation/cubits/locale/locale_cubit.dart';
import 'package:test_app/utils/logger.dart';

class SongListRepoImp extends SongListRepo {
  @override
  Future<List<Song>> getSongList<String>({
    required String offset,
    required String limit,
    required String terms,
    required String entity,
  }) async {
    final lang =
        globalContext.read<LocaleCubit>().currentLocale!.apiLanguageCode;
    final Response response = await dioService.get(
      'search?term=$terms&limit=$limit&offset=$offset&lang=$lang&entity=$entity',
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
