import 'package:flutter/material.dart';
import 'package:talabat/forgot_password/view/forgot_password.dart';
import 'package:talabat/home_page/view/home_page.dart';
import 'package:talabat/shared/authentication.dart';
import 'package:talabat/shared/shared_prefrences.dart';
import 'package:talabat/sign_up/sign_up.dart';
import 'package:talabat/map/map.dart';


import '../../const.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  AuthController authController = AuthController();
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isObscure = true;



  void _toggle() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(Icons.arrow_back, color: Colors.black, size: 33),
        title: Text(
          'Login',
          style: appBarTitle,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(19.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadTitle(
              headTitle: "Continue with email",
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Form(
                key: formKey,
                child: Column(
                  children: [

                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty)
                          return 'Empty field!';
                        else if (!value.contains('@'))
                          return 'missing @!';
                        else
                          return null;
                      },
                      controller: emailController,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[900]),
                        ),
                        hintText: 'Email',
                        hintStyle: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 23),
                      child: TextFormField(
                          controller: passwordController,

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
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 61),
                      child: ConstrainedBox(
                        constraints:
                            BoxConstraints.tightFor(width: double.infinity),
                        child: ElevatedButton(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.normal),
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(top: 17, bottom: 17),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(8), // <-- Radius
                            ),
                            primary: Color(0xFF601BC8),
                          ),
                          onPressed: () async {
                            if (formKey.currentState.validate()) {
                              final message = await authController.Auth(emailController.text, passwordController.text,"signInWithPassword");
                              if(message != 'ok')
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
                              else {

                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
                                      builder: (context) => HomePage(),));
                              }
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Text(
                      "Forgot password ?",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF601BC8)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPassword()),
                      );
                    },
                  ),
                  TextButton(
                    child: Text(
                      "Creat an account",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF601BC8)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
