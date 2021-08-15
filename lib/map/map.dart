import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:talabat/login_method/view/login_method.dart';
import 'package:talabat/shared/shared_prefrences.dart';

class Map extends StatefulWidget {


  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.search),
        title: Text("Map"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () async {

            SharedPref.clear();
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (BuildContext ctx) => LoginMethod()));
          },
          child: Text('Logout'),
        ),
      ),
    );
  }
}
