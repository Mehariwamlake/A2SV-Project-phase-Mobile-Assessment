import 'dart:convert';

import 'package:weatherapp/core/error/exception.dart';
import 'package:weatherapp/features/detail/data/model/weather_model.dart';
import 'package:weatherapp/features/detail/domain/entites/weather.dart';
import 'package:http/http.dart' as http;

abstract class WeatherRemoteDataSource {
  Future<weatherModel> deleteWeather(String id);

  Future<List<weatherModel>> getWeather();

  Future<weatherModel> postWeather(Weather weather);
}

class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  final http.Client client;
  final uriString = 'https://api.worldweatheronline.com/premium/v1/weather.ashx?key={68da0c21ae6d455e91771733231110}&q={mexico}&num_of_days=7&tp=3&format=json';

  WeatherRemoteDataSourceImpl({required this.client});
  @override
  Future<List<weatherModel>> getWeather() async {
    final response = await client.get(
      Uri.parse(uriString),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      final weatherList = List<Map<String, dynamic>>.from(jsonResponse);
      final weather =
          weatherList.map((json) => weatherModel.fromJson(json)).toList();
      return weather;
    } else {
      throw ServerException('Internal Server Error');
    }
  }

  @override
  Future<List<weatherModel>> deleteWeather(String id) async {
    final response = await client.delete(
      Uri.parse('${uriString}deletweather/$id'),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      return weatherModel.fromJson(jsonResponse);
    } else {
      throw ServerException('Internal Server Error');
    }
  }

  @override
  Future<weatherModel> postWeather(Weather weather) async {
    final weatherModel = WeatherModel(
      id: weather.id,
      title: weather.title,
      date: weather.date,
      imageUrl: weather.imageUrl,
    );

    final jsonBody = json.encode(weatherModel.toJson());
    final response = await client.post(
      Uri.parse('${uriString}postArticle'),
      body: jsonBody,
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      return weatherModel.fromJson(jsonResponse);
    } else {
      throw ServerException('Internal Server Failure');
    }
  }
}
