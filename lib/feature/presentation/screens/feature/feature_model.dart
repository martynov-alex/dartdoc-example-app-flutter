import 'package:dartdoc_example_flutter/feature/domain/entities/feature_data_entity.dart';
import 'package:dartdoc_example_flutter/feature/domain/repositories/i_feature_repository.dart';
import 'package:dartdoc_example_flutter/feature/presentation/screens/feature/feature_screen.dart';
import 'package:elementary/elementary.dart';

/// Бизнес-логика экрана фичи [FeatureScreen].
/// {@category Фича}
/// {@category Elementary}
class FeatureModel extends ElementaryModel {
  final IFeatureRepository _featureRepository;

  /// @nodoc
  FeatureModel({required IFeatureRepository featureRepository})
      : _featureRepository = featureRepository;

  /// Получить данные по фиче.
  Future<FeatureDataEntity> get() async => _featureRepository.get();
}
