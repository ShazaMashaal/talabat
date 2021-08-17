import 'package:flutter/material.dart';
import 'package:talabat/home_page/view/home_page.dart';
import 'package:talabat/shared/authentication.dart';
import 'package:talabat/widgets/custom_text_form_field.dart';
import 'package:talabat/map/map.dart';

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
  TextEditingController lastNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();

  AuthController authController = AuthController();



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
                      TextFormField(
                        validator: (value){
                          if(value.isEmpty) return 'Empty field!';
                          else return null;
                        },
                        controller: firstNameController,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[900]),
                          ),
                          hintText: "First name",
                          hintStyle: TextStyle(fontSize: 18.0),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: TextFormField(
                          validator: (value){
                            if(value.isEmpty) return 'Empty field!';
                            else return null;
                          },
                          controller: lastNameController,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[900]),
                            ),
                            hintText: "Last name",
                            hintStyle: TextStyle(fontSize: 18.0),

                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: TextFormField(
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


                            onPressed: ()async {
                              if (formKey.currentState.validate()) {
                                final message = await authController.Auth(emailController.text, passwordController.text,"signUp");
                                if(message != 'ok')
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
                                else{
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
                              }
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
