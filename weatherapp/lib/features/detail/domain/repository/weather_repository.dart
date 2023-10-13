import 'package:dartz/dartz.dart';
import '../../../../core/error/fail.dart';
import '../entites/weather.dart';

abstract class WeatherRepository {
  Future<Either<Failure, Weather>> getWeather();
  Future<Either<Failure, Weather>> deletWeather(String id);
  Future<Either<Failure, Weather>> postWeather(Weather weather);


}