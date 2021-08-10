import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
final String hintText;
final TextEditingController controller ;

   CustomTextField({ this.hintText, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value){
        if(value.isEmpty) return 'Empty field!';
        else return null;
      },
      controller: controller,
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
