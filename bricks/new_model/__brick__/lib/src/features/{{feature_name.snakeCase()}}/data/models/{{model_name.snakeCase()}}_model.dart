import 'package:freezed_annotation/freezed_annotation.dart';
{{#use_equatable}}import 'package:equatable/equatable.dart';{{/use_equatable}}

part '{{model_name.snakeCase()}}_model.freezed.dart';
part '{{model_name.snakeCase()}}_model.g.dart';

@freezed
sealed class {{model_name.pascalCase()}}Model with _${{model_name.pascalCase()}}Model {{#use_equatable}}implements Equatable {{/use_equatable}}{
  const {{model_name.pascalCase()}}Model._();
  
  const factory {{model_name.pascalCase()}}Model() = _{{model_name.pascalCase()}}Model;

  factory {{model_name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) => _${{model_name.pascalCase()}}ModelFromJson(json);
  {{#use_equatable}}
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

  @override
  // TODO: implement stringify
  bool? get stringify => throw UnimplementedError();
  {{/use_equatable}}
}
