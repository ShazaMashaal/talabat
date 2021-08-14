import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:talabat/login_method/view/login_method.dart';

import '../../const.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      navigateAfterSeconds: LoginMethod(),
      title: Text(
        'talabat',
        style: splashTitle,
      ),
      loadingText:
          Text('"Food delivery platform for expo 2020"', style: splashSupTitle),
      useLoader: false,
      backgroundColor: Color(0xFFF57C00),
    );
  }
}
