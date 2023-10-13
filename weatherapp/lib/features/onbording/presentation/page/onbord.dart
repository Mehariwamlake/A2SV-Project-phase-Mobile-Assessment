import 'package:weatherapp/core/utils/images.dart';
import 'package:weatherapp/core/utils/style.dart';

import '../../../../core/utils/colors.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
 
  int index = 0;
  final String headerText = 'Read the article you want instantly.';
  final String descriptionText =
      'You can read thousands of articles on Blog Club, save them in the application and share them with your loved ones.';
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.07),
            Padding(
              padding: const EdgeInsets.all(35.0),
               child: Column(
          children: [
            SizedBox(height: 143),
            Image.asset(onbordpic, height: 150, fit:BoxFit.fill),
            
            SizedBox(height: 67),
            const Text(
              'Weather',
              style: TextStyle(
                color: Color(0xFFFFBA25),
                fontSize: 44,
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            SizedBox(height: 4),
            const Text(
              'Forecast App.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            const SizedBox(height: 23),
            const SizedBox(
              width: 302,
              height: 60,
              child: Text(
                'It\'s the newest weather app. It has a bunch of features \n and that includes most of the ones that every weather app has.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  // height: 0.14,
                ),
              ),
            ), 
            const SizedBox(height: 42),
            GestureDetector(
              onTap: () {
                
              },
              child: Container(
                width: 220,
                height: 48,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFFBA25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Center(
                  child:  Text(
                    'Get Started',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
            ),
           
          ],
        ),
      ),
    );
  }
}