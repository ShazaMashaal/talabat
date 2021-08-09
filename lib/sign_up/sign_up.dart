import 'package:flutter/material.dart';
import 'package:talabat/widgets/custom_button.dart';
import 'package:talabat/widgets/custom_password_field.dart';
import 'package:talabat/widgets/custom_text_form_field.dart';

import '../const.dart';

class SignUp extends StatefulWidget {


  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {



  @override
  Widget build(BuildContext context) {
    bool _checkbox=true;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(Icons.arrow_back, color: Colors.black, size: 33),
        title: Text(
          "Welcome to talabat",
          style: appBarTitle,
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(19.0),
          child:Column(
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
                        hintText: "First name",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: CustomTextField(
                          hintText: "Last name",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: CustomTextField(
                          hintText: "Email",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 23),
                        child: PasswordTextField(),
                      ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('I am true'),
                      value: _checkbox,
                      onChanged: (value) {
                        setState(() {
                          _checkbox = !_checkbox;
                        });
                      },
                    ),
                  ),
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: CustomButton(text: "Create account"),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}

