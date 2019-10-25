import 'package:flutter/material.dart';
import 'dart:async';
class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.pushReplacementNamed(context, "/homescreen"));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
           gradient: LinearGradient(colors: [Colors.red,Colors.indigo],
                begin: Alignment.topCenter,
                end: Alignment.bottomRight
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 75.0,
                  child: Icon(Icons.add_a_photo,color: Colors.blueAccent,size: 100.0,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
