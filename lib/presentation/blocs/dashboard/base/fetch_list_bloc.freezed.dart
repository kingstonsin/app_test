// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FetchListEvent<T> {
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  String get terms => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset, int limit, String terms) getData,
    required TResult Function(int offset, int limit, String terms, List<T> data)
        loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int offset, int limit, String terms)? getData,
    TResult? Function(int offset, int limit, String terms, List<T> data)?
        loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset, int limit, String terms)? getData,
    TResult Function(int offset, int limit, String terms, List<T> data)?
        loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataEvent<T> value) getData,
    required TResult Function(LoadMoreEvent<T> value) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataEvent<T> value)? getData,
    TResult? Function(LoadMoreEvent<T> value)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataEvent<T> value)? getData,
    TResult Function(LoadMoreEvent<T> value)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchListEventCopyWith<T, FetchListEvent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchListEventCopyWith<T, $Res> {
  factory $FetchListEventCopyWith(
          FetchListEvent<T> value, $Res Function(FetchListEvent<T>) then) =
      _$FetchListEventCopyWithImpl<T, $Res, FetchListEvent<T>>;
  @useResult
  $Res call({int offset, int limit, String terms});
}

/// @nodoc
class _$FetchListEventCopyWithImpl<T, $Res, $Val extends FetchListEvent<T>>
    implements $FetchListEventCopyWith<T, $Res> {
  _$FetchListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
    Object? terms = null,
  }) {
    return _then(_value.copyWith(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      terms: null == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDataEventImplCopyWith<T, $Res>
    implements $FetchListEventCopyWith<T, $Res> {
  factory _$$GetDataEventImplCopyWith(_$GetDataEventImpl<T> value,
          $Res Function(_$GetDataEventImpl<T>) then) =
      __$$GetDataEventImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int offset, int limit, String terms});
}

/// @nodoc
class __$$GetDataEventImplCopyWithImpl<T, $Res>
    extends _$FetchListEventCopyWithImpl<T, $Res, _$GetDataEventImpl<T>>
    implements _$$GetDataEventImplCopyWith<T, $Res> {
  __$$GetDataEventImplCopyWithImpl(
      _$GetDataEventImpl<T> _value, $Res Function(_$GetDataEventImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
    Object? terms = null,
  }) {
    return _then(_$GetDataEventImpl<T>(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      terms: null == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetDataEventImpl<T>
    with DiagnosticableTreeMixin
    implements GetDataEvent<T> {
  const _$GetDataEventImpl(
      {required this.offset, required this.limit, required this.terms});

  @override
  final int offset;
  @override
  final int limit;
  @override
  final String terms;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FetchListEvent<$T>.getData(offset: $offset, limit: $limit, terms: $terms)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FetchListEvent<$T>.getData'))
      ..add(DiagnosticsProperty('offset', offset))
      ..add(DiagnosticsProperty('limit', limit))
      ..add(DiagnosticsProperty('terms', terms));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataEventImpl<T> &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.terms, terms) || other.terms == terms));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset, limit, terms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDataEventImplCopyWith<T, _$GetDataEventImpl<T>> get copyWith =>
      __$$GetDataEventImplCopyWithImpl<T, _$GetDataEventImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset, int limit, String terms) getData,
    required TResult Function(int offset, int limit, String terms, List<T> data)
        loadMore,
  }) {
    return getData(offset, limit, terms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int offset, int limit, String terms)? getData,
    TResult? Function(int offset, int limit, String terms, List<T> data)?
        loadMore,
  }) {
    return getData?.call(offset, limit, terms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset, int limit, String terms)? getData,
    TResult Function(int offset, int limit, String terms, List<T> data)?
        loadMore,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(offset, limit, terms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataEvent<T> value) getData,
    required TResult Function(LoadMoreEvent<T> value) loadMore,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataEvent<T> value)? getData,
    TResult? Function(LoadMoreEvent<T> value)? loadMore,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataEvent<T> value)? getData,
    TResult Function(LoadMoreEvent<T> value)? loadMore,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetDataEvent<T> implements FetchListEvent<T> {
  const factory GetDataEvent(
      {required final int offset,
      required final int limit,
      required final String terms}) = _$GetDataEventImpl<T>;

  @override
  int get offset;
  @override
  int get limit;
  @override
  String get terms;
  @override
  @JsonKey(ignore: true)
  _$$GetDataEventImplCopyWith<T, _$GetDataEventImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreEventImplCopyWith<T, $Res>
    implements $FetchListEventCopyWith<T, $Res> {
  factory _$$LoadMoreEventImplCopyWith(_$LoadMoreEventImpl<T> value,
          $Res Function(_$LoadMoreEventImpl<T>) then) =
      __$$LoadMoreEventImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int offset, int limit, String terms, List<T> data});
}

/// @nodoc
class __$$LoadMoreEventImplCopyWithImpl<T, $Res>
    extends _$FetchListEventCopyWithImpl<T, $Res, _$LoadMoreEventImpl<T>>
    implements _$$LoadMoreEventImplCopyWith<T, $Res> {
  __$$LoadMoreEventImplCopyWithImpl(_$LoadMoreEventImpl<T> _value,
      $Res Function(_$LoadMoreEventImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
    Object? terms = null,
    Object? data = null,
  }) {
    return _then(_$LoadMoreEventImpl<T>(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      terms: null == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$LoadMoreEventImpl<T>
    with DiagnosticableTreeMixin
    implements LoadMoreEvent<T> {
  const _$LoadMoreEventImpl(
      {required this.offset,
      required this.limit,
      required this.terms,
      required final List<T> data})
      : _data = data;

  @override
  final int offset;
  @override
  final int limit;
  @override
  final String terms;
  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FetchListEvent<$T>.loadMore(offset: $offset, limit: $limit, terms: $terms, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FetchListEvent<$T>.loadMore'))
      ..add(DiagnosticsProperty('offset', offset))
      ..add(DiagnosticsProperty('limit', limit))
      ..add(DiagnosticsProperty('terms', terms))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreEventImpl<T> &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.terms, terms) || other.terms == terms) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset, limit, terms,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMoreEventImplCopyWith<T, _$LoadMoreEventImpl<T>> get copyWith =>
      __$$LoadMoreEventImplCopyWithImpl<T, _$LoadMoreEventImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset, int limit, String terms) getData,
    required TResult Function(int offset, int limit, String terms, List<T> data)
        loadMore,
  }) {
    return loadMore(offset, limit, terms, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int offset, int limit, String terms)? getData,
    TResult? Function(int offset, int limit, String terms, List<T> data)?
        loadMore,
  }) {
    return loadMore?.call(offset, limit, terms, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset, int limit, String terms)? getData,
    TResult Function(int offset, int limit, String terms, List<T> data)?
        loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(offset, limit, terms, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataEvent<T> value) getData,
    required TResult Function(LoadMoreEvent<T> value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataEvent<T> value)? getData,
    TResult? Function(LoadMoreEvent<T> value)? loadMore,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataEvent<T> value)? getData,
    TResult Function(LoadMoreEvent<T> value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class LoadMoreEvent<T> implements FetchListEvent<T> {
  const factory LoadMoreEvent(
      {required final int offset,
      required final int limit,
      required final String terms,
      required final List<T> data}) = _$LoadMoreEventImpl<T>;

  @override
  int get offset;
  @override
  int get limit;
  @override
  String get terms;
  List<T> get data;
  @override
  @JsonKey(ignore: true)
  _$$LoadMoreEventImplCopyWith<T, _$LoadMoreEventImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
