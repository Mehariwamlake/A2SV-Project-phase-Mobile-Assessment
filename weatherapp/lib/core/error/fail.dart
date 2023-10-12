import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  Failure([List properties = const <dynamic>[]]) : super();
  @override
  List<Object> get props => [];

}

class serverFailure extends Failure {
  final String message;
  serverFailure(this.message);
}

class CacherFailure extends Failure {
  final String message;
  CacherFailure(this.message);
}