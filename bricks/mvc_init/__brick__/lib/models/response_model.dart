import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

@freezed
class ResponseModel with _$ResponseModel {
  const ResponseModel._();

  // SAMPLE
  const factory ResponseModel.def({
    required bool success,
    String? message,
  }) = DefaultResponse;

  factory ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);
}
