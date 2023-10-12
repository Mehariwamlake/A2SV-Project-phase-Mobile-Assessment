import 'package:flutter/material.dart';
import 'package:weatherapp/features/detail/presentation/widget/header.dart';
import 'package:weatherapp/features/detail/presentation/widget/wether_temprature.dart';

class WeatherDetail extends StatefulWidget {
  const WeatherDetail({super.key});

  @override
  State<WeatherDetail> createState() => _WeatherDetailState();
}

class _WeatherDetailState extends State<WeatherDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          
        ],
      ),
    );
  }
}
