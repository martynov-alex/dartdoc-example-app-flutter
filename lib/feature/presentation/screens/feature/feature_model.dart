import 'package:dartdoc_example_flutter/feature/domain/entities/feature_data_entity.dart';
import 'package:dartdoc_example_flutter/feature/domain/repositories/i_feature_repository.dart';
import 'package:dartdoc_example_flutter/feature/presentation/screens/feature/feature_screen.dart';
import 'package:elementary/elementary.dart';

/// Интерфейс [ElementaryModel] экрана фичи [FeatureScreen].
/// {@category Фича}
/// {@category Elementary}
abstract class IFeatureModel extends ElementaryModel {
  /// Получить данные по фиче.
  Future<FeatureDataEntity> get();
}

/// Реализация [IFeatureModel].
/// {@category Фича}
/// {@category Elementary}
class FeatureModel extends ElementaryModel implements IFeatureModel {
  final IFeatureRepository _featureRepository;

  /// @nodoc.
  FeatureModel({required IFeatureRepository featureRepository})
      : _featureRepository = featureRepository;

  @override
  Future<FeatureDataEntity> get() async {
    final data = await _featureRepository.get();
    return data;
  }
}
