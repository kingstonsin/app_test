// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SongList _$SongListFromJson(Map<String, dynamic> json) {
  return _SongList.fromJson(json);
}

/// @nodoc
mixin _$SongList {
  int? get resultCount => throw _privateConstructorUsedError;
  List<Song> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongListCopyWith<SongList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongListCopyWith<$Res> {
  factory $SongListCopyWith(SongList value, $Res Function(SongList) then) =
      _$SongListCopyWithImpl<$Res, SongList>;
  @useResult
  $Res call({int? resultCount, List<Song> results});
}

/// @nodoc
class _$SongListCopyWithImpl<$Res, $Val extends SongList>
    implements $SongListCopyWith<$Res> {
  _$SongListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultCount = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      resultCount: freezed == resultCount
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Song>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SongListImplCopyWith<$Res>
    implements $SongListCopyWith<$Res> {
  factory _$$SongListImplCopyWith(
          _$SongListImpl value, $Res Function(_$SongListImpl) then) =
      __$$SongListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? resultCount, List<Song> results});
}

/// @nodoc
class __$$SongListImplCopyWithImpl<$Res>
    extends _$SongListCopyWithImpl<$Res, _$SongListImpl>
    implements _$$SongListImplCopyWith<$Res> {
  __$$SongListImplCopyWithImpl(
      _$SongListImpl _value, $Res Function(_$SongListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultCount = freezed,
    Object? results = null,
  }) {
    return _then(_$SongListImpl(
      resultCount: freezed == resultCount
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Song>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongListImpl implements _SongList {
  _$SongListImpl({this.resultCount, final List<Song> results = const []})
      : _results = results;

  factory _$SongListImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongListImplFromJson(json);

  @override
  final int? resultCount;
  final List<Song> _results;
  @override
  @JsonKey()
  List<Song> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'SongList(resultCount: $resultCount, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongListImpl &&
            (identical(other.resultCount, resultCount) ||
                other.resultCount == resultCount) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, resultCount, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SongListImplCopyWith<_$SongListImpl> get copyWith =>
      __$$SongListImplCopyWithImpl<_$SongListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongListImplToJson(
      this,
    );
  }
}

abstract class _SongList implements SongList {
  factory _SongList({final int? resultCount, final List<Song> results}) =
      _$SongListImpl;

  factory _SongList.fromJson(Map<String, dynamic> json) =
      _$SongListImpl.fromJson;

  @override
  int? get resultCount;
  @override
  List<Song> get results;
  @override
  @JsonKey(ignore: true)
  _$$SongListImplCopyWith<_$SongListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Song _$SongFromJson(Map<String, dynamic> json) {
  return _Song.fromJson(json);
}

/// @nodoc
mixin _$Song {
  String? get wrapperType => throw _privateConstructorUsedError;
  String? get artistName => throw _privateConstructorUsedError;
  String? get trackName => throw _privateConstructorUsedError;
  String? get artworkUrl60 => throw _privateConstructorUsedError;
  String? get primaryGenreName => throw _privateConstructorUsedError;
  String? get previewUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongCopyWith<Song> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongCopyWith<$Res> {
  factory $SongCopyWith(Song value, $Res Function(Song) then) =
      _$SongCopyWithImpl<$Res, Song>;
  @useResult
  $Res call(
      {String? wrapperType,
      String? artistName,
      String? trackName,
      String? artworkUrl60,
      String? primaryGenreName,
      String? previewUrl});
}

/// @nodoc
class _$SongCopyWithImpl<$Res, $Val extends Song>
    implements $SongCopyWith<$Res> {
  _$SongCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wrapperType = freezed,
    Object? artistName = freezed,
    Object? trackName = freezed,
    Object? artworkUrl60 = freezed,
    Object? primaryGenreName = freezed,
    Object? previewUrl = freezed,
  }) {
    return _then(_value.copyWith(
      wrapperType: freezed == wrapperType
          ? _value.wrapperType
          : wrapperType // ignore: cast_nullable_to_non_nullable
              as String?,
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
      trackName: freezed == trackName
          ? _value.trackName
          : trackName // ignore: cast_nullable_to_non_nullable
              as String?,
      artworkUrl60: freezed == artworkUrl60
          ? _value.artworkUrl60
          : artworkUrl60 // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryGenreName: freezed == primaryGenreName
          ? _value.primaryGenreName
          : primaryGenreName // ignore: cast_nullable_to_non_nullable
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SongImplCopyWith<$Res> implements $SongCopyWith<$Res> {
  factory _$$SongImplCopyWith(
          _$SongImpl value, $Res Function(_$SongImpl) then) =
      __$$SongImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? wrapperType,
      String? artistName,
      String? trackName,
      String? artworkUrl60,
      String? primaryGenreName,
      String? previewUrl});
}

/// @nodoc
class __$$SongImplCopyWithImpl<$Res>
    extends _$SongCopyWithImpl<$Res, _$SongImpl>
    implements _$$SongImplCopyWith<$Res> {
  __$$SongImplCopyWithImpl(_$SongImpl _value, $Res Function(_$SongImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wrapperType = freezed,
    Object? artistName = freezed,
    Object? trackName = freezed,
    Object? artworkUrl60 = freezed,
    Object? primaryGenreName = freezed,
    Object? previewUrl = freezed,
  }) {
    return _then(_$SongImpl(
      wrapperType: freezed == wrapperType
          ? _value.wrapperType
          : wrapperType // ignore: cast_nullable_to_non_nullable
              as String?,
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
      trackName: freezed == trackName
          ? _value.trackName
          : trackName // ignore: cast_nullable_to_non_nullable
              as String?,
      artworkUrl60: freezed == artworkUrl60
          ? _value.artworkUrl60
          : artworkUrl60 // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryGenreName: freezed == primaryGenreName
          ? _value.primaryGenreName
          : primaryGenreName // ignore: cast_nullable_to_non_nullable
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongImpl implements _Song {
  const _$SongImpl(
      {this.wrapperType,
      this.artistName,
      this.trackName,
      this.artworkUrl60,
      this.primaryGenreName,
      this.previewUrl});

  factory _$SongImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongImplFromJson(json);

  @override
  final String? wrapperType;
  @override
  final String? artistName;
  @override
  final String? trackName;
  @override
  final String? artworkUrl60;
  @override
  final String? primaryGenreName;
  @override
  final String? previewUrl;

  @override
  String toString() {
    return 'Song(wrapperType: $wrapperType, artistName: $artistName, trackName: $trackName, artworkUrl60: $artworkUrl60, primaryGenreName: $primaryGenreName, previewUrl: $previewUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongImpl &&
            (identical(other.wrapperType, wrapperType) ||
                other.wrapperType == wrapperType) &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName) &&
            (identical(other.trackName, trackName) ||
                other.trackName == trackName) &&
            (identical(other.artworkUrl60, artworkUrl60) ||
                other.artworkUrl60 == artworkUrl60) &&
            (identical(other.primaryGenreName, primaryGenreName) ||
                other.primaryGenreName == primaryGenreName) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, wrapperType, artistName,
      trackName, artworkUrl60, primaryGenreName, previewUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SongImplCopyWith<_$SongImpl> get copyWith =>
      __$$SongImplCopyWithImpl<_$SongImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongImplToJson(
      this,
    );
  }
}

abstract class _Song implements Song {
  const factory _Song(
      {final String? wrapperType,
      final String? artistName,
      final String? trackName,
      final String? artworkUrl60,
      final String? primaryGenreName,
      final String? previewUrl}) = _$SongImpl;

  factory _Song.fromJson(Map<String, dynamic> json) = _$SongImpl.fromJson;

  @override
  String? get wrapperType;
  @override
  String? get artistName;
  @override
  String? get trackName;
  @override
  String? get artworkUrl60;
  @override
  String? get primaryGenreName;
  @override
  String? get previewUrl;
  @override
  @JsonKey(ignore: true)
  _$$SongImplCopyWith<_$SongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
