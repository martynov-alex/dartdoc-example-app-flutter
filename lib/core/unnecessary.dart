/// Класс, который не должен попасть в документацию.
class Unnecessary {
  /// Поле, которое никому не интересно.
  final bool unnecessaryField;

  /// @nodoc
  Unnecessary(this.unnecessaryField);

  /// Метод, который не должен попасть в документацию.
  void unnecessaryMethod() {}
}
