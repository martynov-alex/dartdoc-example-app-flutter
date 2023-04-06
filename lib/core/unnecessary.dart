/// Класс, который не должен попасть в документацию.
class Unnecessary {
  final bool unnecessaryField;

  /// @nodoc.
  Unnecessary(this.unnecessaryField);

  /// Метод, который не должен попасть в документацию.
  void unnecessaryMethod() {}
}
