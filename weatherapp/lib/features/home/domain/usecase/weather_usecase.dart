import 'package:dartz/dartz.dart';
import 'package:weatherapp/core/error/fail.dart';
import 'package:weatherapp/core/usecases/usecase.dart';
import 'package:weatherapp/features/detail/domain/entites/weather.dart';
import 'package:weatherapp/features/detail/domain/repository/weather_repository.dart';
import 'package:weatherapp/features/home/domain/repostory/weather_repository.dart';

class SearchWeather implements UseCase<List<Weather>, String> {
  HomeRepository repository;
  SearchWeather({required this.repository});

  @override
  Future<Either<Failure, List<Weather>>> call(String params) async {
    return await repository.SearchWeather(params);
    
  }
}

class GetWeather implements UseCase<List<Weather>, NoParams> {
  HomeRepository repository;
  GetWeather({required this.repository});

  @override
  Future<Either<Failure, List<Weather>>> call(NoParams params) async {
    return await repository.getWeather();
  }
}