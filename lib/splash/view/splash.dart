import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:talabat/login_method/view/login_method.dart';

class Splash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 14,
      navigateAfterSeconds:  LoginMethod(),
      title:  Text(
        'Welcome In SplashScreen',
        style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image:  Image.network(
          'https://flutter.io/images/catalog-widget-placeholder.png'),
      backgroundColor: Colors.white,
      loaderColor: Colors.red,
    );
  }
}
