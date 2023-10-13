import 'package:dartz/dartz.dart';
import 'package:weatherapp/core/error/fail.dart';
import 'package:weatherapp/features/detail/domain/entites/weather.dart';
import 'package:weatherapp/features/home/domain/usecase/weather_usecase.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<Weather>>> getWeather();
  Future<Either<Failure, List<Weather>>> SearchWeather(String query);

}