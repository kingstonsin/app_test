// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fav_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() fetchData,
    required TResult Function(Song song) removeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? fetchData,
    TResult? Function(Song song)? removeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? fetchData,
    TResult Function(Song song)? removeData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(FetchData value) fetchData,
    required TResult Function(RemoveData value) removeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(FetchData value)? fetchData,
    TResult? Function(RemoveData value)? removeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(FetchData value)? fetchData,
    TResult Function(RemoveData value)? removeData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavEventCopyWith<$Res> {
  factory $FavEventCopyWith(FavEvent value, $Res Function(FavEvent) then) =
      _$FavEventCopyWithImpl<$Res, FavEvent>;
}

/// @nodoc
class _$FavEventCopyWithImpl<$Res, $Val extends FavEvent>
    implements $FavEventCopyWith<$Res> {
  _$FavEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$FavEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'FavEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() fetchData,
    required TResult Function(Song song) removeData,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? fetchData,
    TResult? Function(Song song)? removeData,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? fetchData,
    TResult Function(Song song)? removeData,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(FetchData value) fetchData,
    required TResult Function(RemoveData value) removeData,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(FetchData value)? fetchData,
    TResult? Function(RemoveData value)? removeData,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(FetchData value)? fetchData,
    TResult Function(RemoveData value)? removeData,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements FavEvent {
  const factory Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$FetchDataImplCopyWith<$Res> {
  factory _$$FetchDataImplCopyWith(
          _$FetchDataImpl value, $Res Function(_$FetchDataImpl) then) =
      __$$FetchDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDataImplCopyWithImpl<$Res>
    extends _$FavEventCopyWithImpl<$Res, _$FetchDataImpl>
    implements _$$FetchDataImplCopyWith<$Res> {
  __$$FetchDataImplCopyWithImpl(
      _$FetchDataImpl _value, $Res Function(_$FetchDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchDataImpl implements FetchData {
  const _$FetchDataImpl();

  @override
  String toString() {
    return 'FavEvent.fetchData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() fetchData,
    required TResult Function(Song song) removeData,
  }) {
    return fetchData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? fetchData,
    TResult? Function(Song song)? removeData,
  }) {
    return fetchData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? fetchData,
    TResult Function(Song song)? removeData,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(FetchData value) fetchData,
    required TResult Function(RemoveData value) removeData,
  }) {
    return fetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(FetchData value)? fetchData,
    TResult? Function(RemoveData value)? removeData,
  }) {
    return fetchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(FetchData value)? fetchData,
    TResult Function(RemoveData value)? removeData,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(this);
    }
    return orElse();
  }
}

abstract class FetchData implements FavEvent {
  const factory FetchData() = _$FetchDataImpl;
}

/// @nodoc
abstract class _$$RemoveDataImplCopyWith<$Res> {
  factory _$$RemoveDataImplCopyWith(
          _$RemoveDataImpl value, $Res Function(_$RemoveDataImpl) then) =
      __$$RemoveDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Song song});

  $SongCopyWith<$Res> get song;
}

/// @nodoc
class __$$RemoveDataImplCopyWithImpl<$Res>
    extends _$FavEventCopyWithImpl<$Res, _$RemoveDataImpl>
    implements _$$RemoveDataImplCopyWith<$Res> {
  __$$RemoveDataImplCopyWithImpl(
      _$RemoveDataImpl _value, $Res Function(_$RemoveDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = null,
  }) {
    return _then(_$RemoveDataImpl(
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SongCopyWith<$Res> get song {
    return $SongCopyWith<$Res>(_value.song, (value) {
      return _then(_value.copyWith(song: value));
    });
  }
}

/// @nodoc

class _$RemoveDataImpl implements RemoveData {
  const _$RemoveDataImpl({required this.song});

  @override
  final Song song;

  @override
  String toString() {
    return 'FavEvent.removeData(song: $song)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveDataImpl &&
            (identical(other.song, song) || other.song == song));
  }

  @override
  int get hashCode => Object.hash(runtimeType, song);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveDataImplCopyWith<_$RemoveDataImpl> get copyWith =>
      __$$RemoveDataImplCopyWithImpl<_$RemoveDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() fetchData,
    required TResult Function(Song song) removeData,
  }) {
    return removeData(song);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? fetchData,
    TResult? Function(Song song)? removeData,
  }) {
    return removeData?.call(song);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? fetchData,
    TResult Function(Song song)? removeData,
    required TResult orElse(),
  }) {
    if (removeData != null) {
      return removeData(song);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(FetchData value) fetchData,
    required TResult Function(RemoveData value) removeData,
  }) {
    return removeData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(FetchData value)? fetchData,
    TResult? Function(RemoveData value)? removeData,
  }) {
    return removeData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(FetchData value)? fetchData,
    TResult Function(RemoveData value)? removeData,
    required TResult orElse(),
  }) {
    if (removeData != null) {
      return removeData(this);
    }
    return orElse();
  }
}

abstract class RemoveData implements FavEvent {
  const factory RemoveData({required final Song song}) = _$RemoveDataImpl;

  Song get song;
  @JsonKey(ignore: true)
  _$$RemoveDataImplCopyWith<_$RemoveDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavState {
  List<Song>? get favList => throw _privateConstructorUsedError;
  FavStatus? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavStateCopyWith<FavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavStateCopyWith<$Res> {
  factory $FavStateCopyWith(FavState value, $Res Function(FavState) then) =
      _$FavStateCopyWithImpl<$Res, FavState>;
  @useResult
  $Res call({List<Song>? favList, FavStatus? status});
}

/// @nodoc
class _$FavStateCopyWithImpl<$Res, $Val extends FavState>
    implements $FavStateCopyWith<$Res> {
  _$FavStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favList = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      favList: freezed == favList
          ? _value.favList
          : favList // ignore: cast_nullable_to_non_nullable
              as List<Song>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FavStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavStateImplCopyWith<$Res>
    implements $FavStateCopyWith<$Res> {
  factory _$$FavStateImplCopyWith(
          _$FavStateImpl value, $Res Function(_$FavStateImpl) then) =
      __$$FavStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Song>? favList, FavStatus? status});
}

/// @nodoc
class __$$FavStateImplCopyWithImpl<$Res>
    extends _$FavStateCopyWithImpl<$Res, _$FavStateImpl>
    implements _$$FavStateImplCopyWith<$Res> {
  __$$FavStateImplCopyWithImpl(
      _$FavStateImpl _value, $Res Function(_$FavStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favList = freezed,
    Object? status = freezed,
  }) {
    return _then(_$FavStateImpl(
      favList: freezed == favList
          ? _value._favList
          : favList // ignore: cast_nullable_to_non_nullable
              as List<Song>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FavStatus?,
    ));
  }
}

/// @nodoc

class _$FavStateImpl implements _FavState {
  const _$FavStateImpl(
      {final List<Song>? favList = const [], this.status = FavStatus.init})
      : _favList = favList;

  final List<Song>? _favList;
  @override
  @JsonKey()
  List<Song>? get favList {
    final value = _favList;
    if (value == null) return null;
    if (_favList is EqualUnmodifiableListView) return _favList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final FavStatus? status;

  @override
  String toString() {
    return 'FavState(favList: $favList, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavStateImpl &&
            const DeepCollectionEquality().equals(other._favList, _favList) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favList), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavStateImplCopyWith<_$FavStateImpl> get copyWith =>
      __$$FavStateImplCopyWithImpl<_$FavStateImpl>(this, _$identity);
}

abstract class _FavState implements FavState {
  const factory _FavState(
      {final List<Song>? favList, final FavStatus? status}) = _$FavStateImpl;

  @override
  List<Song>? get favList;
  @override
  FavStatus? get status;
  @override
  @JsonKey(ignore: true)
  _$$FavStateImplCopyWith<_$FavStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
