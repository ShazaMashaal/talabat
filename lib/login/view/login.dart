import 'package:flutter/material.dart';
import 'package:talabat/widgets/custom_button.dart';
import 'package:talabat/widgets/custom_password_field.dart';
import 'package:talabat/widgets/custom_text_button.dart';
import 'package:talabat/widgets/custom_text_form_field.dart';

import '../../const.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
          style: loginTitle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadTitle(
              headTitle: "Continue with email",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Form(
                child: Column(
                  children: [
                    CustomTextField(
                      hintText: "Email",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 23),
                      child: PasswordTextField(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 61),
                      child: CustomButton(text: "Login"),
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
                  CustomtextButton(
                    text: "Forgot password ?",
                  ),
                  CustomtextButton(
                    text: "Creat an account",
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