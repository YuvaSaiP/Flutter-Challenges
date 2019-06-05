import 'package:flutter/material.dart';
import 'dart:async';

class splash extends StatefulWidget {
  splash({Key key}) : super(key: key);

  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
 
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.pushReplacementNamed(context, "/homescreen"));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            color: Colors.white,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.school,color:Colors.deepOrange,size: 160.0,),
            ],
          ),
        ],
      ),
    );
  }
}