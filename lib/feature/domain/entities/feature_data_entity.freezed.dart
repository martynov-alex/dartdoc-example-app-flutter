// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feature_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeatureDataEntity {
  /// Данные.
  String get data => throw _privateConstructorUsedError;

  /// {@macro data_type_entity}
  DataTypeEntity get dataType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeatureDataEntityCopyWith<FeatureDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeatureDataEntityCopyWith<$Res> {
  factory $FeatureDataEntityCopyWith(
          FeatureDataEntity value, $Res Function(FeatureDataEntity) then) =
      _$FeatureDataEntityCopyWithImpl<$Res, FeatureDataEntity>;
  @useResult
  $Res call({String data, DataTypeEntity dataType});
}

/// @nodoc
class _$FeatureDataEntityCopyWithImpl<$Res, $Val extends FeatureDataEntity>
    implements $FeatureDataEntityCopyWith<$Res> {
  _$FeatureDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? dataType = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      dataType: null == dataType
          ? _value.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as DataTypeEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeatureDataEntityImplCopyWith<$Res>
    implements $FeatureDataEntityCopyWith<$Res> {
  factory _$$FeatureDataEntityImplCopyWith(_$FeatureDataEntityImpl value,
          $Res Function(_$FeatureDataEntityImpl) then) =
      __$$FeatureDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, DataTypeEntity dataType});
}

/// @nodoc
class __$$FeatureDataEntityImplCopyWithImpl<$Res>
    extends _$FeatureDataEntityCopyWithImpl<$Res, _$FeatureDataEntityImpl>
    implements _$$FeatureDataEntityImplCopyWith<$Res> {
  __$$FeatureDataEntityImplCopyWithImpl(_$FeatureDataEntityImpl _value,
      $Res Function(_$FeatureDataEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? dataType = null,
  }) {
    return _then(_$FeatureDataEntityImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      dataType: null == dataType
          ? _value.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as DataTypeEntity,
    ));
  }
}

/// @nodoc

class _$FeatureDataEntityImpl implements _FeatureDataEntity {
  const _$FeatureDataEntityImpl({required this.data, required this.dataType});

  /// Данные.
  @override
  final String data;

  /// {@macro data_type_entity}
  @override
  final DataTypeEntity dataType;

  @override
  String toString() {
    return 'FeatureDataEntity(data: $data, dataType: $dataType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeatureDataEntityImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.dataType, dataType) ||
                other.dataType == dataType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, dataType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeatureDataEntityImplCopyWith<_$FeatureDataEntityImpl> get copyWith =>
      __$$FeatureDataEntityImplCopyWithImpl<_$FeatureDataEntityImpl>(
          this, _$identity);
}

abstract class _FeatureDataEntity implements FeatureDataEntity {
  const factory _FeatureDataEntity(
      {required final String data,
      required final DataTypeEntity dataType}) = _$FeatureDataEntityImpl;

  @override

  /// Данные.
  String get data;
  @override

  /// {@macro data_type_entity}
  DataTypeEntity get dataType;
  @override
  @JsonKey(ignore: true)
  _$$FeatureDataEntityImplCopyWith<_$FeatureDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
