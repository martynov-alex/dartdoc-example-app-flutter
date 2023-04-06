// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeatureDataDto _$$_FeatureDataDtoFromJson(Map<String, dynamic> json) =>
    _$_FeatureDataDto(
      data: json['data'] as String,
      dataTypeDto:
          DataTypeDto.fromJson(json['dataTypeDto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FeatureDataDtoToJson(_$_FeatureDataDto instance) =>
    <String, dynamic>{
      'data': instance.data,
      'dataTypeDto': instance.dataTypeDto,
    };

_$_DataTypeDto _$$_DataTypeDtoFromJson(Map<String, dynamic> json) =>
    _$_DataTypeDto(
      dataType: $enumDecode(_$DataTypeEnumMap, json['dataType']),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_DataTypeDtoToJson(_$_DataTypeDto instance) =>
    <String, dynamic>{
      'dataType': _$DataTypeEnumMap[instance.dataType]!,
      'description': instance.description,
    };

const _$DataTypeEnumMap = {
  DataType.title: 'title',
  DataType.subtitle: 'subtitle',
  DataType.info: 'info',
};
