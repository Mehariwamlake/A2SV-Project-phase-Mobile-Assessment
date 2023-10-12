import 'package:dartz/dartz.dart';
import '../../../../core/error/fail.dart';
import '../entites/weather.dart';

abstract class WeatherRepository {
  Future<Either<Failure, Weather>> getWeather();
  Future<Either<Failure, List<Weather>>> deletWeather(String id);
  Future<Either<Failure, List<Weather>>> postWeather(String id);
  Future<Either<Failure, List<Weather>>> searchWeather();


}