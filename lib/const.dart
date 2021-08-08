import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final splashTitle=TextStyle(
  fontSize: 90,
  color: Color(0xFFFFFFFF),
  fontWeight: FontWeight.bold
);

final splashSupTitle=TextStyle(
    fontSize: 11,
    color: Color(0xFF000000),
    fontWeight: FontWeight.bold
);

final loginTitle=TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.normal);

class  HeadTitle extends StatelessWidget {
  final String headTitle;

  const HeadTitle({ this.headTitle});

  @override
  Widget build(BuildContext context) {
    return Text(headTitle,style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),);;
  }
}

