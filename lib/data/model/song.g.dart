// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SongListImpl _$$SongListImplFromJson(Map<String, dynamic> json) =>
    _$SongListImpl(
      resultCount: (json['resultCount'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Song.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SongListImplToJson(_$SongListImpl instance) =>
    <String, dynamic>{
      'resultCount': instance.resultCount,
      'results': instance.results,
    };

_$SongImpl _$$SongImplFromJson(Map<String, dynamic> json) => _$SongImpl(
      wrapperType: json['wrapperType'] as String?,
      kind: json['kind'] as String?,
      artistName: json['artistName'] as String?,
      trackName: json['trackName'] as String?,
      artworkUrl60: json['artworkUrl60'] as String?,
      primaryGenreName: json['primaryGenreName'] as String?,
    );

Map<String, dynamic> _$$SongImplToJson(_$SongImpl instance) =>
    <String, dynamic>{
      'wrapperType': instance.wrapperType,
      'kind': instance.kind,
      'artistName': instance.artistName,
      'trackName': instance.trackName,
      'artworkUrl60': instance.artworkUrl60,
      'primaryGenreName': instance.primaryGenreName,
    };
