import 'package:flutter/material.dart';
import 'package:weatherapp/core/utils/colors.dart';
import 'package:weatherapp/core/utils/converter.dart';
import 'package:weatherapp/core/utils/images.dart';

class Weather_temprature extends StatelessWidget {
  const Weather_temprature({super.key});

  @override
  Widget build(BuildContext context) {
    double left = convertPixle(23, "width", context);
    double bottom = convertPixle(23, "height", context);
    double top = convertPixle(17, "height", context);
    double imageSize = convertPixle(219, "width", context);

    String text = 'Most sunny'
    '30 degree';
    return Column(children: [
      Padding(
        padding: EdgeInsets.only(bottom: bottom, top: top),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: Image(
            fit: BoxFit.cover,
            height: imageSize,
            width: double.infinity,
            image: const AssetImage(suncluod),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: left),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: primaryColor,
              fontFamily: 'Poppins'),
        ),
      )
    ]);
  }
}