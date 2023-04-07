library feature_api;

import 'package:dartdoc_example_flutter/api/service/feature/data/feature_data_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'feature_api.g.dart';

/// {@template events_api}
/// API фичи.
/// {@endtemplate}
/// {@category API}
/// {@category Фича}
@RestApi()
abstract class FeatureApi {
  /// Фабрика создания API с помощью [Dio].
  factory FeatureApi(Dio dio) = _FeatureApi;

  /// Получение дынных.
  @GET('')
  Future<FeatureDataDto> get();
}
