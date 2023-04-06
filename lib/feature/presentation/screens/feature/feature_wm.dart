import 'package:dartdoc_example_flutter/feature/di/feature_scope.dart';
import 'package:dartdoc_example_flutter/feature/domain/entities/feature_data_entity.dart';
import 'package:dartdoc_example_flutter/feature/presentation/screens/feature/feature_model.dart';
import 'package:dartdoc_example_flutter/feature/presentation/screens/feature/feature_screen.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

FeatureWm _create(BuildContext context) {
  final featureScope = context.read<IFeatureScope>();

  final model = FeatureModel(featureRepository: featureScope.featureRepository);

  return FeatureWm(model);
}

/// Интерфейс [WidgetModel] экрана фичи [FeatureScreen].
/// {@category Фича}
/// {@category Elementary}
abstract class IFeatureWm extends IWidgetModel {
  /// Заголовок экрана.
  String get screenTitle;

  /// Заголовок экрана.
  EntityStateNotifier<FeatureDataEntity> get featureDataState;

  /// Получить данные по фиче.
  void fetch();

  /// Назад.
  void back();
}

/// Реализация [IFeatureWm].
/// {@category Фича}
/// {@category Elementary}
class FeatureWm extends WidgetModel<FeatureScreen, FeatureModel>
    implements IFeatureWm {
  final _featureDataState = EntityStateNotifier<FeatureDataEntity>();

  @override
  String get screenTitle => 'Название фичи';

  @override
  EntityStateNotifier<FeatureDataEntity> get featureDataState =>
      _featureDataState;

  /// @nodoc.
  FeatureWm(FeatureModel model) : super(model);

  /// Фабрика создания [WidgetModel].
  factory FeatureWm.create(BuildContext context) => _create(context);

  @override
  void back() => Navigator.pop(context);

  @override
  Future<void> fetch() async {
    final previousData = _featureDataState.value?.data;

    _featureDataState.loading(previousData);

    try {
      final data = await model.get();
      _featureDataState.content(data);
    } on Exception catch (e) {
      _featureDataState.error(e, previousData);
    }
  }
}
