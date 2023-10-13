import 'package:weatherapp/features/detail/domain/entites/weather.dart';

class weatherModel extends Weather {
  weatherModel ({
    required String id,
    required String title,
    required String imageUrl,
    required DateTime date,

  }) : super(
    date: date,
    id: id,
    title: title,
    imageUrl: imageUrl);
    factory weatherModel.fromJson(Map<String, dynamic> json) {
      return weatherModel(
        id: json['id'],
        title: json['title'],
        imageUrl: json['imageUrl'],
        date: DateTime.parse(json['date'],)
        );
    }

    Map<String, dynamic> toJson() {
      return {
        'id' : id,
        'title' : title,
        'imageUrl' : imageUrl,
        'date' : date.toIso8601String().split('.')[0],
      };
    }
}