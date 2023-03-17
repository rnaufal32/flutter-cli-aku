import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';

part '{{model_name.snakeCase()}}_model.freezed.dart';
part '{{model_name.snakeCase()}}_model.g.dart';

@freezed
class {{model_name.pascalCase()}}Model with _${{model_name.pascalCase()}}Model implements Equatable {
  const {{model_name.pascalCase()}}Model._();
  
  const factory {{model_name.pascalCase()}}Model() = _{{model_name.pascalCase()}}Model;

  factory {{model_name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) => _${{model_name.pascalCase()}}ModelFromJson(json);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

  @override
  // TODO: implement stringify
  bool? get stringify => throw UnimplementedError();
}
