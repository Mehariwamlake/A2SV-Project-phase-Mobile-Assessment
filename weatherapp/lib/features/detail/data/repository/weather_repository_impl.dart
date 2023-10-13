import 'package:dartz/dartz.dart';
import 'package:weatherapp/core/error/exception.dart';
import 'package:weatherapp/core/error/fail.dart';
import 'package:weatherapp/core/network/network_info.dart';
import 'package:weatherapp/features/detail/data/datasource/weather_local.dart';
import 'package:weatherapp/features/detail/data/datasource/weather_remote.dart';
import 'package:weatherapp/features/detail/domain/entites/weather.dart';
import 'package:weatherapp/features/detail/domain/repository/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherRemoteDataSource remoteDataSource;
  final WeatherLocalData localDataSource;
  final NetworkInfo networkInfo;

  WeatherRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
    required this.networkInfo,
  });
  @override
  Future<Either<Failure, List<Weather>>> getWeather() async {
    if (await networkInfo.isconnected) {
      try {
        final remoteArticles = await remoteDataSource.getWeather();
        localDataSource.cacheWeather(remoteArticles);
        return Right(remoteArticles);
      } on ServerException {
        return Left(serverFailure("Internal Server Failure!"));
      }
    } else {
      try {
        final localArticles = await localDataSource.getLastWeather();
        return Right(localArticles);
      } on CacheException {
        return Left(CacherFailure("Local Catch Sever Failure"));
      }
    }
  }

  @override
  Future<Either<Failure, Weather>> deleteWeather(String id) async {
    try {
      final deleteweather = await remoteDataSource.deleteWeather(id);
      return Right(deleteweather);
    } on ServerException {
      return Left(serverFailure("Internal Server Failure!"));
    }
  }

  @override
  Future<Either<Failure, Weather>> PostWeather(Weather weather) async {
    try {
      final createdWeather = await remoteDataSource.postWeather(weather);
      return Right(createdWeather);
    } on ServerException {
      return Left(serverFailure("Internal Server Failure"));
    }
  }
}