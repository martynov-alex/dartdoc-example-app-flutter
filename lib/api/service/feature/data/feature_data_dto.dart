library feature_data_dto;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'feature_data_dto.freezed.dart';
part 'feature_data_dto.g.dart';

/// DTO с данными по фиче.
/// {@category Фича}
@freezed
class FeatureDataDto with _$FeatureDataDto {
  /// @nodoc
  const factory FeatureDataDto({
    /// Данные.
    required String data,

    /// {@macro data_type_dto}
    required DataTypeDto dataTypeDto,
  }) = _FeatureDataDto;

  /// Метод преобразования [json] в [FeatureDataDto].
  factory FeatureDataDto.fromJson(Map<String, dynamic> json) => _$FeatureDataDtoFromJson(json);
}

/// {@template data_type_dto}
/// DTO с типом данных.
/// {@endtemplate}
/// {@category Фича}
@freezed
class DataTypeDto with _$DataTypeDto {
  /// @nodoc
  const factory DataTypeDto({
    /// {@macro data_type}
    required DataType dataType,

    /// Описание.
    required String description,
  }) = _DataTypeDto;

  /// Метод преобразования [json] в [DataTypeDto].
  factory DataTypeDto.fromJson(Map<String, dynamic> json) => _$DataTypeDtoFromJson(json);
}

/// {@template data_type}
/// Тип данных.
/// {@endtemplate}
/// {@category Фича}
enum DataType {
  /// Заголовок.
  @JsonValue('title')
  title,

  /// Подзаголовок.
  @JsonValue('subtitle')
  subtitle,

  /// Информация.
  @JsonValue('info')
  info,
}
