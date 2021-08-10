import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
final String text;

  const CustomButton({ this.text}) ;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: double.infinity),

      child: ElevatedButton(
        child: Text(text,style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.normal),),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.only(top: 17,bottom: 17),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // <-- Radius
          ),
          primary: Color(0xFF601BC8),
        ),


        onPressed: (){

        },
      ),
    );
  }
}
