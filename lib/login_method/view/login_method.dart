import 'package:flutter/material.dart';
import 'package:talabat/login/view/login.dart';

import '../../const.dart';

class LoginMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 44),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "talabat",
                  style: TextStyle(fontSize: 51, fontWeight: FontWeight.bold),
                ),
                Text("Your everyday,right away", style: TextStyle(fontSize: 15))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 104),
            height: MediaQuery.of(context).size.height / 4.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Login or create an account",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    Text("Login  or create an account to receive",
                        style: TextStyle(fontSize: 15)),
                    Text("   rewards and save your details for",
                        style: TextStyle(fontSize: 15)),
                    Text("      a faster checkout experience",
                        style: TextStyle(fontSize: 15)),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 48, right: 20, left: 20),
            height: MediaQuery.of(context).size.height / 3.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Image.asset(
                          "assets/images/Google.png",
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Spacer(),
                      Text("Continue with Google",
                          style: TextStyle(fontSize: 21)),
                      Spacer(),
                    ],
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(top: 17, bottom: 17),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // <-- Radius
                    ),
                    primary: Color(0xFF1B55C8),
                  ),
                ),
                ElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Image.asset(
                          "assets/images/facebook.png",
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Spacer(),
                      Text("Continue with Facebook",
                          style: TextStyle(fontSize: 21)),
                      Spacer(),
                    ],
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(top: 17, bottom: 17),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // <-- Radius
                    ),
                    primary: Color(0xFF1B55C8),
                  ),
                ),
                ElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Image.asset(
                          "assets/images/email.png",
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Spacer(),
                      Text("Continue with Email",
                          style: TextStyle(fontSize: 21)),
                      Spacer(),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()));
                    },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(top: 17, bottom: 17),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // <-- Radius
                    ),
                    primary: Color(0xFF601BC8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}