import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:talabat/login_method/view/login_method.dart';
import 'package:talabat/shared/shared_prefrences.dart';
import 'package:talabat/map/map.dart';

import '../../const.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

   StartScreen() {
    if(SharedPref.containsKey("idToken")){
      return Map();
    }else
      return LoginMethod();
  }
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      navigateAfterSeconds:

      StartScreen(),
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
