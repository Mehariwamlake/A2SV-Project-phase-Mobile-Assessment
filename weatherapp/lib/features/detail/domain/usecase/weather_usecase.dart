import 'package:dartz/dartz.dart';
import 'package:weatherapp/core/error/fail.dart';
import 'package:weatherapp/features/detail/domain/entites/weather.dart';
import 'package:weatherapp/features/detail/domain/repository/weather_repository.dart';

class GetWeather {
  final WeatherRepository repository;
  GetWeather({required this.repository});
  Future<Either<Failure, Weather>> call (String id) async {
    return await repository.getWeather();
  }
}