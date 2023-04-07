import 'package:freezed_annotation/freezed_annotation.dart';

part 'feature_data_entity.freezed.dart';

/// Сущность данных по фиче.
/// {@category Entity}
/// {@category Фича}
@freezed
class FeatureDataEntity with _$FeatureDataEntity {
  /// @nodoc.
  const factory FeatureDataEntity({
    /// Данные.
    required String data,

    /// {@macro data_type_entity}
    required DataTypeEntity dataType,
  }) = _FeatureDataEntity;
}

/// {@template data_type_entity}
/// Сущность типа данных.
/// {@endtemplate}
/// {@category Entity}
enum DataTypeEntity {
  /// Заголовок.
  title('Заголовок'),

  /// Подзаголовок.
  subtitle('Подзаголовок'),

  /// Информация.
  info('Информация');

  /// @nodoc.
  const DataTypeEntity(this.typeName);

  /// Наименование типа данных.
  final String typeName;
}
