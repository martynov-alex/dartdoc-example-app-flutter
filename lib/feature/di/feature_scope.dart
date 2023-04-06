import 'package:dartdoc_example_flutter/api/service/feature_api.dart';
import 'package:dartdoc_example_flutter/feature/data/repositories/feature_repository.dart';
import 'package:dartdoc_example_flutter/feature/domain/repositories/i_feature_repository.dart';
import 'package:dio/dio.dart';

/// Скоуп фичи.
/// {@category Фича}
abstract class IFeatureScope {
  /// {@macro feature_repository}
  IFeatureRepository get featureRepository;

  /// {@macro scope_dispose}
  void dispose();
}

/// Реализация [IFeatureScope].
class FeatureScope implements IFeatureScope {
  @override
  late final IFeatureRepository featureRepository;

  late final _dio = Dio();
  late final _api = FeatureApi(_dio);

  /// @nodoc.
  FeatureScope() {
    featureRepository = FeatureRepository(featureApi: _api);
  }

  @override
  void dispose() {}
}
