import 'package:equatable/equatable.dart';

class Weather extends Equatable {
  final String id;
  final String title;
  final DateTime date;
  final String imageUrl;


  Weather ({
    required this.id,
    required this.title,
    required this.date,
    required this.imageUrl,
  }) : super();

  @override
  List<Object> get props => [id, title,];
}