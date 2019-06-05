import 'package:flutter/material.dart';
import 'splash.dart';
import 'homescreen.dart';
var routes = <String,WidgetBuilder>
{
"/homescreen" : (BuildContext context) => homescreen(),
};

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(primarySwatch: Colors.deepOrange),
      home: splash(),
      debugShowCheckedModeBanner: false,
      title: 'Made with Flutter',
      routes: routes,
    );
  }
}