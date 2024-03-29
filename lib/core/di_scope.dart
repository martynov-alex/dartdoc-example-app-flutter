import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Фабрика, которая возвращает скоуп зависимостей.
typedef ScopeFactory<T> = T Function();

/// Функция для высвобождения ресурсов.
typedef Dispose<T> = Function(BuildContext context, T scope);

/// DI контейнер.
///
/// T - возвращаемый тип.
class DiScope<T> extends StatefulWidget {
  /// Фабрика, которая возвращает скоуп зависимостей.
  final ScopeFactory<T> factory;

  /// Виджет, который оборачивает DiScope.
  final Widget child;

  /// {@template scope_dispose}
  /// Высвобождение ресурсов.
  /// {@endtemplate}
  final Dispose<T>? dispose;

  /// @nodoc
  const DiScope({
    required this.factory,
    required this.child,
    this.dispose,
    super.key,
  });

  @override
  DiScopeState<T> createState() => DiScopeState<T>();
}

/// Состояние DI контейнера.
class DiScopeState<T> extends State<DiScope<T>> {
  /// Cкоуп зависимостей.
  late T scope;

  @override
  void initState() {
    super.initState();
    scope = widget.factory();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<T>(
      create: (_) => scope,
      child: widget.child,
      dispose: widget.dispose,
    );
  }
}
