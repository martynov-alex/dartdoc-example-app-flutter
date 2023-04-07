// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feature_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeatureDataDto _$FeatureDataDtoFromJson(Map<String, dynamic> json) {
  return _FeatureDataDto.fromJson(json);
}

/// @nodoc
mixin _$FeatureDataDto {
  /// Данные.
  String get data => throw _privateConstructorUsedError;

  /// {@macro data_type_dto}
  DataTypeDto get dataTypeDto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeatureDataDtoCopyWith<FeatureDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeatureDataDtoCopyWith<$Res> {
  factory $FeatureDataDtoCopyWith(
          FeatureDataDto value, $Res Function(FeatureDataDto) then) =
      _$FeatureDataDtoCopyWithImpl<$Res, FeatureDataDto>;
  @useResult
  $Res call({String data, DataTypeDto dataTypeDto});

  $DataTypeDtoCopyWith<$Res> get dataTypeDto;
}

/// @nodoc
class _$FeatureDataDtoCopyWithImpl<$Res, $Val extends FeatureDataDto>
    implements $FeatureDataDtoCopyWith<$Res> {
  _$FeatureDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? dataTypeDto = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      dataTypeDto: null == dataTypeDto
          ? _value.dataTypeDto
          : dataTypeDto // ignore: cast_nullable_to_non_nullable
              as DataTypeDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataTypeDtoCopyWith<$Res> get dataTypeDto {
    return $DataTypeDtoCopyWith<$Res>(_value.dataTypeDto, (value) {
      return _then(_value.copyWith(dataTypeDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FeatureDataDtoCopyWith<$Res>
    implements $FeatureDataDtoCopyWith<$Res> {
  factory _$$_FeatureDataDtoCopyWith(
          _$_FeatureDataDto value, $Res Function(_$_FeatureDataDto) then) =
      __$$_FeatureDataDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, DataTypeDto dataTypeDto});

  @override
  $DataTypeDtoCopyWith<$Res> get dataTypeDto;
}

/// @nodoc
class __$$_FeatureDataDtoCopyWithImpl<$Res>
    extends _$FeatureDataDtoCopyWithImpl<$Res, _$_FeatureDataDto>
    implements _$$_FeatureDataDtoCopyWith<$Res> {
  __$$_FeatureDataDtoCopyWithImpl(
      _$_FeatureDataDto _value, $Res Function(_$_FeatureDataDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? dataTypeDto = null,
  }) {
    return _then(_$_FeatureDataDto(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      dataTypeDto: null == dataTypeDto
          ? _value.dataTypeDto
          : dataTypeDto // ignore: cast_nullable_to_non_nullable
              as DataTypeDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeatureDataDto implements _FeatureDataDto {
  const _$_FeatureDataDto({required this.data, required this.dataTypeDto});

  factory _$_FeatureDataDto.fromJson(Map<String, dynamic> json) =>
      _$$_FeatureDataDtoFromJson(json);

  /// Данные.
  @override
  final String data;

  /// {@macro data_type_dto}
  @override
  final DataTypeDto dataTypeDto;

  @override
  String toString() {
    return 'FeatureDataDto(data: $data, dataTypeDto: $dataTypeDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeatureDataDto &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.dataTypeDto, dataTypeDto) ||
                other.dataTypeDto == dataTypeDto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, dataTypeDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeatureDataDtoCopyWith<_$_FeatureDataDto> get copyWith =>
      __$$_FeatureDataDtoCopyWithImpl<_$_FeatureDataDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeatureDataDtoToJson(
      this,
    );
  }
}

abstract class _FeatureDataDto implements FeatureDataDto {
  const factory _FeatureDataDto(
      {required final String data,
      required final DataTypeDto dataTypeDto}) = _$_FeatureDataDto;

  factory _FeatureDataDto.fromJson(Map<String, dynamic> json) =
      _$_FeatureDataDto.fromJson;

  @override

  /// Данные.
  String get data;
  @override

  /// {@macro data_type_dto}
  DataTypeDto get dataTypeDto;
  @override
  @JsonKey(ignore: true)
  _$$_FeatureDataDtoCopyWith<_$_FeatureDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

DataTypeDto _$DataTypeDtoFromJson(Map<String, dynamic> json) {
  return _DataTypeDto.fromJson(json);
}

/// @nodoc
mixin _$DataTypeDto {
  /// {@macro data_type}
  DataType get dataType => throw _privateConstructorUsedError;

  /// Описание.
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataTypeDtoCopyWith<DataTypeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataTypeDtoCopyWith<$Res> {
  factory $DataTypeDtoCopyWith(
          DataTypeDto value, $Res Function(DataTypeDto) then) =
      _$DataTypeDtoCopyWithImpl<$Res, DataTypeDto>;
  @useResult
  $Res call({DataType dataType, String description});
}

/// @nodoc
class _$DataTypeDtoCopyWithImpl<$Res, $Val extends DataTypeDto>
    implements $DataTypeDtoCopyWith<$Res> {
  _$DataTypeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataType = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      dataType: null == dataType
          ? _value.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as DataType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataTypeDtoCopyWith<$Res>
    implements $DataTypeDtoCopyWith<$Res> {
  factory _$$_DataTypeDtoCopyWith(
          _$_DataTypeDto value, $Res Function(_$_DataTypeDto) then) =
      __$$_DataTypeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataType dataType, String description});
}

/// @nodoc
class __$$_DataTypeDtoCopyWithImpl<$Res>
    extends _$DataTypeDtoCopyWithImpl<$Res, _$_DataTypeDto>
    implements _$$_DataTypeDtoCopyWith<$Res> {
  __$$_DataTypeDtoCopyWithImpl(
      _$_DataTypeDto _value, $Res Function(_$_DataTypeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataType = null,
    Object? description = null,
  }) {
    return _then(_$_DataTypeDto(
      dataType: null == dataType
          ? _value.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as DataType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataTypeDto implements _DataTypeDto {
  const _$_DataTypeDto({required this.dataType, required this.description});

  factory _$_DataTypeDto.fromJson(Map<String, dynamic> json) =>
      _$$_DataTypeDtoFromJson(json);

  /// {@macro data_type}
  @override
  final DataType dataType;

  /// Описание.
  @override
  final String description;

  @override
  String toString() {
    return 'DataTypeDto(dataType: $dataType, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataTypeDto &&
            (identical(other.dataType, dataType) ||
                other.dataType == dataType) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dataType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataTypeDtoCopyWith<_$_DataTypeDto> get copyWith =>
      __$$_DataTypeDtoCopyWithImpl<_$_DataTypeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataTypeDtoToJson(
      this,
    );
  }
}

abstract class _DataTypeDto implements DataTypeDto {
  const factory _DataTypeDto(
      {required final DataType dataType,
      required final String description}) = _$_DataTypeDto;

  factory _DataTypeDto.fromJson(Map<String, dynamic> json) =
      _$_DataTypeDto.fromJson;

  @override

  /// {@macro data_type}
  DataType get dataType;
  @override

  /// Описание.
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_DataTypeDtoCopyWith<_$_DataTypeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
