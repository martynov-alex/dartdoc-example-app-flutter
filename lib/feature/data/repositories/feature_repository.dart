import 'dart:math';

import 'package:dartdoc_example_flutter/api/service/feature/feature_api.dart';
import 'package:dartdoc_example_flutter/feature/domain/entities/feature_data_entity.dart';
import 'package:dartdoc_example_flutter/feature/domain/repositories/i_feature_repository.dart';

const _requestDuration = Duration(seconds: 2);
const _dataTypes = DataTypeEntity.values;

/// {@template feature_repository}
/// Репозиторий фичи.
/// {@endtemplate}
/// {@category Repository}
/// {@category Фича}
class FeatureRepository implements IFeatureRepository {
  final FeatureApi _featureApi;

  /// Конструктор.
  const FeatureRepository({
    required FeatureApi featureApi,
  }) : _featureApi = featureApi;

  @override
  Future<FeatureDataEntity> get() async {
    final random = Random();
    final dataType = random.nextInt(_dataTypes.length);
    final featureData = FeatureDataEntity(
      data: 'Тут какой-то текст.',
      dataType: _dataTypes[dataType],
    );

    final errorRandom = random.nextInt(100);
    if (errorRandom > 80) throw Exception();

    return Future.delayed(_requestDuration, () => featureData);
  }
}
