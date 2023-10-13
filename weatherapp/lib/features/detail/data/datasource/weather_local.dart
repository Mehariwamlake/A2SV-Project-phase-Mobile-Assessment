import 'dart:convert';

import 'package:weatherapp/core/error/exception.dart';
import 'package:weatherapp/features/detail/data/model/weather_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class WeatherLocalData {
  Future<List<weatherModel>> getLastWeather();
  Future<void> cacheWeather(List<weatherModel> weather);
}

const cachedWeather = 'CachedWeather';

class WeatherLocalDataImpl implements WeatherLocalData {
  final SharedPreferences sharedPreferences;
  WeatherLocalDataImpl({required this.sharedPreferences});

  @override
  Future<List<weatherModel>> getLastWeather() {
    final jsonString = sharedPreferences.getString(cachedWeather);

    if (jsonString != null) {
      final List<dynamic> jsonData = json.decode(jsonString);
      final List<weatherModel> articles =
          jsonData.map((json) => weatherModel.fromJson(json)).toList();
      return Future.value(articles);
    } else {
      throw CacheException('Local Cache Failure');
    }
  }
  @override
  Future<void> cacheWeather(List<weatherModel> articles) {
    final encodedArticles =
        jsonEncode(articles.map((article) => article.toJson()).toList());
    return sharedPreferences.setString(cachedWeather, encodedArticles);
  }
}