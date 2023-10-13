import 'package:flutter/material.dart';
import 'package:weatherapp/core/utils/images.dart';

class BodyDetail extends StatelessWidget {
  const BodyDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Center(
              child: Image.asset(suncluod)),
            const SizedBox(height: 7),
            const Text(
              'Mostly Sunny',
              style: TextStyle(
                color: Color(0xFF9E93FF),
                fontSize: 24,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '30',
                  style: TextStyle(
                    color: Color(0xFF211772),
                    fontSize: 72,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                )
              ],
            )
          ],
        ),
      );
     
              

          
                    
                        

  }
}