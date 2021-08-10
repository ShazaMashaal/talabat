import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isObscure = true;

   TextEditingController controller ;


  void _toggle() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,

        validator: (value){
      if(value.isEmpty) return 'Empty field!';
      else if(value.length < 4) return 'Password length must be more than 4 charachters';
      else return null;},
        obscureText: _isObscure,
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[900]),
          ),
          hintText: "Password",
          hintStyle: TextStyle(fontSize: 18.0),
          suffix: TextButton(
              style: TextButton.styleFrom(padding: EdgeInsets.all(0),),

              onPressed: _toggle,
              child: Text(_isObscure ? "Show" : "Hide",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Colors.black),)
          ),

        )
    );
  }
}
