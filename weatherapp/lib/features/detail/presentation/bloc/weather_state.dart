part of 'weather_bloc.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();
  
  @override
  List<Object> get props => [];
}

class WeatherInitial extends WeatherState {}

class WeatherLoadingState extends WeatherState{}

class WeatherSuccessState extends WeatherState{
  final Weather weather;

  const WeatherSuccessState({required this.weather});

  @override
  List<Object> get props => [];

}


class WeatherFailureState extends WeatherState {
  final Failure error;

  const WeatherFailureState({required this.error});

  @override
  List<Object> get props => [];
}