// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DefaultResponseImpl _$$DefaultResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DefaultResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$DefaultResponseImplToJson(
        _$DefaultResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
    };
