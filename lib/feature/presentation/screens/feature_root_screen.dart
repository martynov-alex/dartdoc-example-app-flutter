import 'package:dartdoc_example_flutter/core/di_scope.dart';
import 'package:dartdoc_example_flutter/feature/di/feature_scope.dart';
import 'package:dartdoc_example_flutter/feature/presentation/screens/feature/feature_screen.dart';
import 'package:flutter/material.dart';

/// Корневой экран фичи.
/// {@category Фича}
class FeatureRootScreen extends StatefulWidget {
  /// @nodoc
  const FeatureRootScreen({super.key});

  @override
  State<FeatureRootScreen> createState() => _FeatureRootScreenState();
}

class _FeatureRootScreenState extends State<FeatureRootScreen> {
  late final IFeatureScope _scope;

  @override
  void initState() {
    super.initState();
    _scope = FeatureScope();
  }

  @override
  Widget build(BuildContext context) {
    return DiScope<IFeatureScope>(
      key: ObjectKey(_scope),
      factory: () => _scope,
      child: const FeatureScreen(),
      dispose: (_, scope) => scope.dispose(),
    );
  }
}
