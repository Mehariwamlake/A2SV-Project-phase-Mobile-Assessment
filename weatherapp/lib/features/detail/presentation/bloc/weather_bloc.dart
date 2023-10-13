import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:weatherapp/core/error/fail.dart';
import 'package:weatherapp/features/detail/domain/entites/weather.dart';
import 'package:weatherapp/features/detail/domain/usecase/weather_usecase.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final DeleteWeather deleteWeather;
  final PostWeather postWeather;
  final GetWeather getWeather;

  WeatherState weatherSuccessorFailure(Either<Failure, Weather> data) {
    return data.fold(
      (failure) => WeatherFailureState(error: failure),
      (success) => WeatherSuccessState(weather: success),
      );
  }

  WeatherState weatherSuccessorFailure(Either<Failure, Weather> data) {
    return data.fold(
      (failure) => WeatherFailureState(error: failure),
      (success) => WeatherSuccessState(weather: success),
      );
  }

  void _deletWeather(
    DeleteWeatherEvent event, Emitter<WeatherState> emit) async {
      emit(WeatherLoadingState());
      final result = await deleteWeather(event.weatherId);
      emit(weatherSuccessorFailure(result));
    }

  void _postWeather (
    PostWeatherEvent event, Emitter<WeatherState> emit) async {
      emit(WeatherLoadingState());
      final result = await postWeather(event.weather);
      emit(weatherSuccessorFailure(result));
    }
  WeatherBloc({
    required this.deleteWeather,
    required this.getWeather,
    required this.postWeather,
  }) : super(WeatherInitial()) {
    on<DeleteWeatherEvent>(_deletWeather);
    on<PostWeatherEvent>(_postWeather);
    
      
    
  }
}
