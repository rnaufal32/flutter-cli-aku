// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'default_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DefaultState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace? stackTrace) error,
    required TResult Function(T data) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(Object error, StackTrace? stackTrace)? error,
    TResult? Function(T data)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    TResult Function(T data)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultInitState<T> value) init,
    required TResult Function(DefaultLoadingState<T> value) loading,
    required TResult Function(DefaultErrorState<T> value) error,
    required TResult Function(DefaultDataState<T> value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DefaultInitState<T> value)? init,
    TResult? Function(DefaultLoadingState<T> value)? loading,
    TResult? Function(DefaultErrorState<T> value)? error,
    TResult? Function(DefaultDataState<T> value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultInitState<T> value)? init,
    TResult Function(DefaultLoadingState<T> value)? loading,
    TResult Function(DefaultErrorState<T> value)? error,
    TResult Function(DefaultDataState<T> value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultStateCopyWith<T, $Res> {
  factory $DefaultStateCopyWith(
          DefaultState<T> value, $Res Function(DefaultState<T>) then) =
      _$DefaultStateCopyWithImpl<T, $Res, DefaultState<T>>;
}

/// @nodoc
class _$DefaultStateCopyWithImpl<T, $Res, $Val extends DefaultState<T>>
    implements $DefaultStateCopyWith<T, $Res> {
  _$DefaultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DefaultInitStateImplCopyWith<T, $Res> {
  factory _$$DefaultInitStateImplCopyWith(_$DefaultInitStateImpl<T> value,
          $Res Function(_$DefaultInitStateImpl<T>) then) =
      __$$DefaultInitStateImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$DefaultInitStateImplCopyWithImpl<T, $Res>
    extends _$DefaultStateCopyWithImpl<T, $Res, _$DefaultInitStateImpl<T>>
    implements _$$DefaultInitStateImplCopyWith<T, $Res> {
  __$$DefaultInitStateImplCopyWithImpl(_$DefaultInitStateImpl<T> _value,
      $Res Function(_$DefaultInitStateImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DefaultInitStateImpl<T> extends DefaultInitState<T> {
  const _$DefaultInitStateImpl() : super._();

  @override
  String toString() {
    return 'DefaultState<$T>.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultInitStateImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace? stackTrace) error,
    required TResult Function(T data) data,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(Object error, StackTrace? stackTrace)? error,
    TResult? Function(T data)? data,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    TResult Function(T data)? data,
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
    required TResult Function(DefaultInitState<T> value) init,
    required TResult Function(DefaultLoadingState<T> value) loading,
    required TResult Function(DefaultErrorState<T> value) error,
    required TResult Function(DefaultDataState<T> value) data,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DefaultInitState<T> value)? init,
    TResult? Function(DefaultLoadingState<T> value)? loading,
    TResult? Function(DefaultErrorState<T> value)? error,
    TResult? Function(DefaultDataState<T> value)? data,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultInitState<T> value)? init,
    TResult Function(DefaultLoadingState<T> value)? loading,
    TResult Function(DefaultErrorState<T> value)? error,
    TResult Function(DefaultDataState<T> value)? data,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class DefaultInitState<T> extends DefaultState<T> {
  const factory DefaultInitState() = _$DefaultInitStateImpl<T>;
  const DefaultInitState._() : super._();
}

/// @nodoc
abstract class _$$DefaultLoadingStateImplCopyWith<T, $Res> {
  factory _$$DefaultLoadingStateImplCopyWith(_$DefaultLoadingStateImpl<T> value,
          $Res Function(_$DefaultLoadingStateImpl<T>) then) =
      __$$DefaultLoadingStateImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$DefaultLoadingStateImplCopyWithImpl<T, $Res>
    extends _$DefaultStateCopyWithImpl<T, $Res, _$DefaultLoadingStateImpl<T>>
    implements _$$DefaultLoadingStateImplCopyWith<T, $Res> {
  __$$DefaultLoadingStateImplCopyWithImpl(_$DefaultLoadingStateImpl<T> _value,
      $Res Function(_$DefaultLoadingStateImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DefaultLoadingStateImpl<T> extends DefaultLoadingState<T> {
  const _$DefaultLoadingStateImpl() : super._();

  @override
  String toString() {
    return 'DefaultState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultLoadingStateImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace? stackTrace) error,
    required TResult Function(T data) data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(Object error, StackTrace? stackTrace)? error,
    TResult? Function(T data)? data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    TResult Function(T data)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultInitState<T> value) init,
    required TResult Function(DefaultLoadingState<T> value) loading,
    required TResult Function(DefaultErrorState<T> value) error,
    required TResult Function(DefaultDataState<T> value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DefaultInitState<T> value)? init,
    TResult? Function(DefaultLoadingState<T> value)? loading,
    TResult? Function(DefaultErrorState<T> value)? error,
    TResult? Function(DefaultDataState<T> value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultInitState<T> value)? init,
    TResult Function(DefaultLoadingState<T> value)? loading,
    TResult Function(DefaultErrorState<T> value)? error,
    TResult Function(DefaultDataState<T> value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DefaultLoadingState<T> extends DefaultState<T> {
  const factory DefaultLoadingState() = _$DefaultLoadingStateImpl<T>;
  const DefaultLoadingState._() : super._();
}

/// @nodoc
abstract class _$$DefaultErrorStateImplCopyWith<T, $Res> {
  factory _$$DefaultErrorStateImplCopyWith(_$DefaultErrorStateImpl<T> value,
          $Res Function(_$DefaultErrorStateImpl<T>) then) =
      __$$DefaultErrorStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Object error, StackTrace? stackTrace});
}

/// @nodoc
class __$$DefaultErrorStateImplCopyWithImpl<T, $Res>
    extends _$DefaultStateCopyWithImpl<T, $Res, _$DefaultErrorStateImpl<T>>
    implements _$$DefaultErrorStateImplCopyWith<T, $Res> {
  __$$DefaultErrorStateImplCopyWithImpl(_$DefaultErrorStateImpl<T> _value,
      $Res Function(_$DefaultErrorStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$DefaultErrorStateImpl<T>(
      null == error ? _value.error : error,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$DefaultErrorStateImpl<T> extends DefaultErrorState<T> {
  const _$DefaultErrorStateImpl(this.error, this.stackTrace) : super._();

  @override
  final Object error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'DefaultState<$T>.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultErrorStateImpl<T> &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultErrorStateImplCopyWith<T, _$DefaultErrorStateImpl<T>>
      get copyWith =>
          __$$DefaultErrorStateImplCopyWithImpl<T, _$DefaultErrorStateImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace? stackTrace) error,
    required TResult Function(T data) data,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(Object error, StackTrace? stackTrace)? error,
    TResult? Function(T data)? data,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    TResult Function(T data)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultInitState<T> value) init,
    required TResult Function(DefaultLoadingState<T> value) loading,
    required TResult Function(DefaultErrorState<T> value) error,
    required TResult Function(DefaultDataState<T> value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DefaultInitState<T> value)? init,
    TResult? Function(DefaultLoadingState<T> value)? loading,
    TResult? Function(DefaultErrorState<T> value)? error,
    TResult? Function(DefaultDataState<T> value)? data,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultInitState<T> value)? init,
    TResult Function(DefaultLoadingState<T> value)? loading,
    TResult Function(DefaultErrorState<T> value)? error,
    TResult Function(DefaultDataState<T> value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DefaultErrorState<T> extends DefaultState<T> {
  const factory DefaultErrorState(
          final Object error, final StackTrace? stackTrace) =
      _$DefaultErrorStateImpl<T>;
  const DefaultErrorState._() : super._();

  Object get error;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  _$$DefaultErrorStateImplCopyWith<T, _$DefaultErrorStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DefaultDataStateImplCopyWith<T, $Res> {
  factory _$$DefaultDataStateImplCopyWith(_$DefaultDataStateImpl<T> value,
          $Res Function(_$DefaultDataStateImpl<T>) then) =
      __$$DefaultDataStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$DefaultDataStateImplCopyWithImpl<T, $Res>
    extends _$DefaultStateCopyWithImpl<T, $Res, _$DefaultDataStateImpl<T>>
    implements _$$DefaultDataStateImplCopyWith<T, $Res> {
  __$$DefaultDataStateImplCopyWithImpl(_$DefaultDataStateImpl<T> _value,
      $Res Function(_$DefaultDataStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DefaultDataStateImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DefaultDataStateImpl<T> extends DefaultDataState<T> {
  const _$DefaultDataStateImpl(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'DefaultState<$T>.data(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultDataStateImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultDataStateImplCopyWith<T, _$DefaultDataStateImpl<T>> get copyWith =>
      __$$DefaultDataStateImplCopyWithImpl<T, _$DefaultDataStateImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace? stackTrace) error,
    required TResult Function(T data) data,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(Object error, StackTrace? stackTrace)? error,
    TResult? Function(T data)? data,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    TResult Function(T data)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultInitState<T> value) init,
    required TResult Function(DefaultLoadingState<T> value) loading,
    required TResult Function(DefaultErrorState<T> value) error,
    required TResult Function(DefaultDataState<T> value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DefaultInitState<T> value)? init,
    TResult? Function(DefaultLoadingState<T> value)? loading,
    TResult? Function(DefaultErrorState<T> value)? error,
    TResult? Function(DefaultDataState<T> value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultInitState<T> value)? init,
    TResult Function(DefaultLoadingState<T> value)? loading,
    TResult Function(DefaultErrorState<T> value)? error,
    TResult Function(DefaultDataState<T> value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DefaultDataState<T> extends DefaultState<T> {
  const factory DefaultDataState(final T data) = _$DefaultDataStateImpl<T>;
  const DefaultDataState._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$DefaultDataStateImplCopyWith<T, _$DefaultDataStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
