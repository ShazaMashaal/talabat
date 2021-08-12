
import 'package:flutter/material.dart';

import '../../const.dart';

class ForgotPassword extends StatefulWidget {

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: InkWell(child: Icon(Icons.arrow_back, color: Colors.black, size: 33),
        onTap: (){

        },),
        title: Text(
          'Forgotten Password',
          style: appBarTitle,
        ),
      ),
    );
  }
}
