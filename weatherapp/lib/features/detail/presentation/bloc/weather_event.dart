part of 'weather_bloc.dart';

abstract class WeatherEvent extends Equatable {
  @override
  List<Object?> get props => [];

}

class GetWeatherEvent extends WeatherEvent {}

class DeleteWeatherEvent extends WeatherEvent {
  final String weatherId;

  DeleteWeatherEvent({required this.weatherId});
   @override
  List<Object?> get props => [weatherId];
}

class PostWeatherEvent extends WeatherEvent {
  final Weather weather;
  PostWeatherEvent({required this.weather});
  
}
