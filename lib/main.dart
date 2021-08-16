import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talabat/home_page/view/home_page.dart';
import 'package:talabat/shared/shared_prefrences.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  SharedPref.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
