import 'package:flutter/material.dart';
import 'package:weatherapp/features/detail/presentation/screen/weather_detail_page.dart';
import 'package:weatherapp/features/onbording/presentation/page/onbord.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen()
    );
  }
}
