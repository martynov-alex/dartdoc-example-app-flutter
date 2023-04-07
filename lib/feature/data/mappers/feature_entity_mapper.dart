import 'package:dartdoc_example_flutter/api/service/feature/data/feature_data_dto.dart';
import 'package:dartdoc_example_flutter/feature/domain/entities/feature_data_entity.dart';

/// Маппер сущности [FeatureDataEntity].
/// {@category Фича}
class FeatureEntityMapper {
  const FeatureEntityMapper._();

  /// Из [FeatureDataDto] в [FeatureDataEntity].
  static FeatureDataEntity fromDto(FeatureDataDto dto) => FeatureDataEntity(
        data: dto.data,
        dataType: DataTypeEntityMapper.fromDto(dto.dataTypeDto),
      );
}

/// Маппер сущности [DataTypeEntity].
class DataTypeEntityMapper {
  const DataTypeEntityMapper._();

  /// Из [DataTypeDto] в [DataTypeEntity].
  static DataTypeEntity fromDto(DataTypeDto dto) {
    switch (dto.dataType) {
      case DataType.title:
        return DataTypeEntity.title;
      case DataType.info:
        return DataTypeEntity.info;
      case DataType.subtitle:
        return DataTypeEntity.subtitle;
    }
  }
}
