import 'package:dartdoc_example_flutter/feature/di/feature_scope.dart';
import 'package:dartdoc_example_flutter/feature/domain/entities/feature_data_entity.dart';
import 'package:dartdoc_example_flutter/feature/presentation/screens/feature/feature_model.dart';
import 'package:dartdoc_example_flutter/feature/presentation/screens/feature/feature_screen.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Фабрика создания [FeatureWM].
FeatureWM featureWMFactory(BuildContext context) {
  final featureScope = context.read<IFeatureScope>();
  final model = FeatureModel(featureRepository: featureScope.featureRepository);
  return FeatureWM(model);
}

/// Интерфейс [WidgetModel] экрана фичи [FeatureScreen].
/// {@category Фича}
/// {@category Elementary}
abstract interface class IFeatureWM implements IWidgetModel {
  /// Заголовок экрана.
  String get screenTitle;

  /// Заголовок экрана.
  EntityStateNotifier<FeatureDataEntity> get featureDataState;

  /// Получить данные по фиче.
  void fetch();

  /// Назад.
  void back();
}

/// Реализация [IFeatureWM].
/// {@category Фича}
/// {@category Elementary}
class FeatureWM extends WidgetModel<FeatureScreen, FeatureModel> implements IFeatureWM {
  final _featureDataState = EntityStateNotifier<FeatureDataEntity>();

  @override
  String get screenTitle => 'Название фичи';

  @override
  EntityStateNotifier<FeatureDataEntity> get featureDataState => _featureDataState;

  /// @nodoc
  FeatureWM(FeatureModel model) : super(model);

  @override
  void back() => Navigator.pop(context);

  @override
  Future<void> fetch() async {
    final previousData = _featureDataState.value.data;

    _featureDataState.loading(previousData);

    try {
      final data = await model.get();
      _featureDataState.content(data);
    } on Exception catch (e) {
      _featureDataState.error(e, previousData);
    }
  }
}
