import 'package:dartdoc_example_flutter/feature/domain/entities/feature_data_entity.dart';

/// {@template i_feature_repository}
/// Интерфейс репозитория фичи.
/// {@endtemplate}
/// {@category Repository}
/// {@category Фича}
abstract class IFeatureRepository {
  /// Получить данные по фиче.
  Future<FeatureDataEntity> get();
}
