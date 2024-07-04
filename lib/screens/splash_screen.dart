import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_modern/screens/weather_home.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Lottie.asset(
                'lib/assets/animation/Animation - 1719950492646.json',
                width: 800,
                height: 800,
              ),
            ),
            Expanded(
              child: Container(
                child: Text(
                  "Hello World",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      nextScreen: WeatherHome(),
      duration: 3500,
      backgroundColor: Color(0xff676bd0),
      splashIconSize: 300,
    );
  }
}
