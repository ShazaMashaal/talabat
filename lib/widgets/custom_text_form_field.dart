import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
final String hintText;

   CustomTextField({ this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[900]),
        ),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 18.0),

      ),
    );
  }

}
