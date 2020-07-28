import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_screen/first_screens.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter app",
      color: Colors.blueGrey,
      home: SafeArea(child: Scaffold(
        appBar: AppBar(title: Text("HOme")),
        body: FirstScreen(),

      )),
    );
  }
}
