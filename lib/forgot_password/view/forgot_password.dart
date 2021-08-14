import 'package:flutter/material.dart';
import 'package:talabat/widgets/custom_text_form_field.dart';
import 'package:talabat/map/map.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../const.dart';

class ForgotPassword extends StatefulWidget {

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(Icons.arrow_back, color: Colors.black, size: 33),
        title: Text(
          'Forgotten password',
          style: appBarTitle,
        ),
      ),
      body: Padding(
        padding:EdgeInsets.only(top:100,left: 20,right: 20),
    child: Form(
    key: formKey,
    child: Column(
    children: [
    CustomTextField(
    hintText: "Email",
    ),
      Padding(
        padding:EdgeInsets.only(top:60),
        child: ConstrainedBox(
          constraints:
          BoxConstraints.tightFor(width: double.infinity),
          child: ElevatedButton(
            child: Text(
              "Reset your password",
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
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))
                    ),
                    title: Center(child: Text('Confirm code',style: TextStyle(fontSize: 25),)),
                     content:Container(
                       width: MediaQuery.of(context).size.width/1.1,
                       height: MediaQuery.of(context).size.height/3.8,

                       child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                       // Padding(
                       //   padding: const EdgeInsets.only(top: 20),
                       //    child:
                             PinCodeTextField(
                            length: 4,
                            obscureText: false,
                               pinTheme: PinTheme(
                                 shape: PinCodeFieldShape.box,
                                 borderRadius: BorderRadius.circular(8),
                                 inactiveColor:  Color(0xFFE6E5E5),
                                 fieldHeight: 78,
                                 fieldWidth: 60,
                                 activeFillColor:Color(0xFFE6E5E5),


                               ),


                          ),

                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Row(
                             children: [
                               Text("you can resend code after "),
                               Text("60 sec",style: TextStyle(color: Color(0xFF601BC8),fontWeight: FontWeight.w500),),

                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 44),
                           child: ConstrainedBox(
                             constraints:
                             BoxConstraints.tightFor(width: double.infinity),
                             child: ElevatedButton(
                               child: Text(
                                 "Confirm",
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
                               onPressed: () {
                                 if (formKey.currentState.validate()) {
                                   Navigator.push(
                                       context,
                                       MaterialPageRoute(
                                           builder: (context) => Map()));
                                 }
                               },
                             ),
                           ),
                         ),
                       ],
                     ),
                     )


                  )
              );
            },
          ),
        ),
      ),
    ],),
    ),
    ));
  }
}
