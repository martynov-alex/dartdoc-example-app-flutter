// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeatureDataDtoImpl _$$FeatureDataDtoImplFromJson(Map<String, dynamic> json) =>
    _$FeatureDataDtoImpl(
      data: json['data'] as String,
      dataTypeDto:
          DataTypeDto.fromJson(json['dataTypeDto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FeatureDataDtoImplToJson(
        _$FeatureDataDtoImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'dataTypeDto': instance.dataTypeDto,
    };

_$DataTypeDtoImpl _$$DataTypeDtoImplFromJson(Map<String, dynamic> json) =>
    _$DataTypeDtoImpl(
      dataType: $enumDecode(_$DataTypeEnumMap, json['dataType']),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$DataTypeDtoImplToJson(_$DataTypeDtoImpl instance) =>
    <String, dynamic>{
      'dataType': _$DataTypeEnumMap[instance.dataType]!,
      'description': instance.description,
    };

const _$DataTypeEnumMap = {
  DataType.title: 'title',
  DataType.subtitle: 'subtitle',
  DataType.info: 'info',
};
