import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'some_thing_api.g.dart';

/// {@template some_thing_api}
/// API какой-то штуки.
/// {@endtemplate}
/// {@category API}
@RestApi()
abstract class SomeThingApi {
  /// Фабрика создания API с помощью [Dio].
  factory SomeThingApi(Dio dio) = _SomeThingApi;

  /// Получение дынных.
  @GET('')
  Future<double> getThing();
}
