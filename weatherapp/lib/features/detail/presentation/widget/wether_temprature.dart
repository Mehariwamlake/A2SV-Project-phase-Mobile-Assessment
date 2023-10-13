import 'package:flutter/material.dart';
import 'package:weatherapp/core/utils/colors.dart';
import 'package:weatherapp/core/utils/converter.dart';
import 'package:weatherapp/core/utils/images.dart';

class Weather_temprature extends StatelessWidget {
  const Weather_temprature({super.key});

  @override
  Widget build(BuildContext context) {

    String text = 'Most sunny'
    '30 degree';
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('ajdk'),
          Image.asset(suncluod)
        ],
      ),
      
    );
  }
}