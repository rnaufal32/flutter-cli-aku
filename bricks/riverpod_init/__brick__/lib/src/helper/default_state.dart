import 'package:freezed_annotation/freezed_annotation.dart';

part 'default_state.freezed.dart';

@freezed
class DefaultState<T> with _$DefaultState<T> {
  const DefaultState._();

  const factory DefaultState.init() = DefaultInitState;
  const factory DefaultState.loading() = DefaultLoadingState;
  const factory DefaultState.error(Object error, StackTrace? stackTrace) =
      DefaultErrorState;
  const factory DefaultState.data(T data) = DefaultDataState;

  bool get isLoading => this is DefaultLoadingState;
  bool get isError => this is DefaultErrorState;
  bool get hasValue => this is DefaultDataState;

  T get data {
    return (this as DefaultDataState).data;
  }

  Object get error {
    return (this as DefaultErrorState).error;
  }
}
