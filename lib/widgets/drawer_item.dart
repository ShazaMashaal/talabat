import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String text;
  final IconData icon;

  const DrawerItem({ this.text, this.icon}) ;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Icon(icon,size: 35,),
        ),
        Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
        
      ],
    );
  }
}
