import 'package:flutter/material.dart';

class CustomtextButton extends StatelessWidget {
final String text;
final Page;
  const CustomtextButton({ this.text, this.Page}) ;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(text,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF601BC8)),),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Page()),
        );
      },
    );
  }
}
