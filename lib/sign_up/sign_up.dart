import 'package:flutter/material.dart';
import 'package:talabat/services/auth_service.dart';
import 'package:talabat/widgets/custom_button.dart';
import 'package:talabat/map/map.dart';
import 'package:provider/provider.dart';

import 'package:talabat/widgets/custom_password_field.dart';
import 'package:talabat/widgets/custom_text_form_field.dart';

import '../const.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  bool _isObscure = true;

  TextEditingController passwordController = TextEditingController();


  void _toggle() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool _checkbox = true;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadTitle(
                headTitle: "Continue with email",
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        hintText: "First name",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: CustomTextField(
                          hintText: "Last name",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: CustomTextField(
                          hintText: "Email",
                          controller: emailController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
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
                        padding: const EdgeInsets.only(top: 20),
                        child: Transform.scale(
                          scale: 1.1,
                          child: Row(
                            children: [
                              Checkbox(
                                activeColor: Color(0xFF601BC8),
                                value: _checkbox,
                                onChanged: (bool value) {
                                  setState(() {
                                    _checkbox = !_checkbox;
                                  });
                                },
                              ),
                              Flexible(
                                  child: Text(
                                "Yes , I want to receive offers and discounts.",
                                style: TextStyle(fontSize: 18),
                              ))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: ConstrainedBox(
                          constraints: BoxConstraints.tightFor(width: double.infinity),
                          child: ElevatedButton(
                            child: Text("Create account",style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.normal),),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.only(top: 17,bottom: 17),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8), // <-- Radius
                              ),
                              primary: Color(0xFF601BC8),
                            ),


                            onPressed: (){
                              if (formKey.currentState.validate()) {
                                final String email=emailController.text.trim();
                                final String password=passwordController.text.trim();

                                context.read<Authentication>().signup(email,password);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Map()));


                              }
                            },
                          ),
                        )
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'By creating an account you agree to the ',
                                  style: TextStyle(fontSize: 16),
                                ),
                                Flexible(
                                    child: Text("Privacy policy",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xFF601BC8)))),
                              ],
                            ),
                            Row(
                              children: [
                                Text("and to the "),
                                Flexible(
                                    child: Text("terms of use",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xFF601BC8))))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
