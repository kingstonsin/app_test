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
mixin _$FetchListEvent {
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  String get terms => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset, int limit, String terms) getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int offset, int limit, String terms)? getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset, int limit, String terms)? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataEvent value) getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataEvent value)? getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataEvent value)? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchListEventCopyWith<FetchListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchListEventCopyWith<$Res> {
  factory $FetchListEventCopyWith(
          FetchListEvent value, $Res Function(FetchListEvent) then) =
      _$FetchListEventCopyWithImpl<$Res, FetchListEvent>;
  @useResult
  $Res call({int offset, int limit, String terms});
}

/// @nodoc
class _$FetchListEventCopyWithImpl<$Res, $Val extends FetchListEvent>
    implements $FetchListEventCopyWith<$Res> {
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
abstract class _$$GetDataEventImplCopyWith<$Res>
    implements $FetchListEventCopyWith<$Res> {
  factory _$$GetDataEventImplCopyWith(
          _$GetDataEventImpl value, $Res Function(_$GetDataEventImpl) then) =
      __$$GetDataEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int offset, int limit, String terms});
}

/// @nodoc
class __$$GetDataEventImplCopyWithImpl<$Res>
    extends _$FetchListEventCopyWithImpl<$Res, _$GetDataEventImpl>
    implements _$$GetDataEventImplCopyWith<$Res> {
  __$$GetDataEventImplCopyWithImpl(
      _$GetDataEventImpl _value, $Res Function(_$GetDataEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
    Object? terms = null,
  }) {
    return _then(_$GetDataEventImpl(
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

class _$GetDataEventImpl implements GetDataEvent {
  const _$GetDataEventImpl(
      {required this.offset, required this.limit, required this.terms});

  @override
  final int offset;
  @override
  final int limit;
  @override
  final String terms;

  @override
  String toString() {
    return 'FetchListEvent.getData(offset: $offset, limit: $limit, terms: $terms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataEventImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.terms, terms) || other.terms == terms));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset, limit, terms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDataEventImplCopyWith<_$GetDataEventImpl> get copyWith =>
      __$$GetDataEventImplCopyWithImpl<_$GetDataEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset, int limit, String terms) getData,
  }) {
    return getData(offset, limit, terms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int offset, int limit, String terms)? getData,
  }) {
    return getData?.call(offset, limit, terms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset, int limit, String terms)? getData,
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
    required TResult Function(GetDataEvent value) getData,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataEvent value)? getData,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataEvent value)? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetDataEvent implements FetchListEvent {
  const factory GetDataEvent(
      {required final int offset,
      required final int limit,
      required final String terms}) = _$GetDataEventImpl;

  @override
  int get offset;
  @override
  int get limit;
  @override
  String get terms;
  @override
  @JsonKey(ignore: true)
  _$$GetDataEventImplCopyWith<_$GetDataEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
