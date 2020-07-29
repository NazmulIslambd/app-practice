import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      color: Colors.black12,
      child: Column(children: <Widget>[
        Row(children: <Widget>[
          Expanded(
              child: Text(
            "Balaka",
            style: TextStyle(
                fontSize: 40.0, fontFamily: 'MetalMania', color: Colors.blue),
          )),
          Expanded(
              child: Text(
            "Dhaka to Kuwait",
            style: TextStyle(
                fontSize: 20.0, fontFamily: 'MetalMania', color: Colors.black),
          ))
        ]),
        Row(children: <Widget>[
          Expanded(
              child: Text(
            "Na",
            style: TextStyle(
                fontSize: 40.0, fontFamily: 'MetalMania', color: Colors.blue),
          )),
          Expanded(
              child: Text(
            "Dhaka to Chittagong",
            style: TextStyle(
                fontSize: 20.0, fontFamily: 'MetalMania', color: Colors.black),
          ))
        ]),
        FlightImage(),
        Row(
          children: <Widget>[
            Expanded(
                child: Text(
              generateLuckyNumber(),
              style: TextStyle(color: Colors.blue, fontSize: 30),
            ))
          ],
        ),
        FlightButton()
      ]),
    );
  }
}

class FlightImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/taiwan.jpg');
    var image = Image(image: assetImage);
    return Container(
      child: image,
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
    );
  }
}

String generateLuckyNumber() {
  var random = Random();
  var luckyNumber = random.nextInt(100);
  return "today your lucky Number $luckyNumber";
}

class FlightButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      width: 200,
      height: 50,
      color: Colors.black12,
      child: RaisedButton(
          child: Text(
            "Check Flight",
            style: TextStyle(color: Colors.deepOrange, fontSize: 20),
          ),
          onPressed: () => flightAlert(context)),
    );
  }

  flightAlert(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Flight successful"),
      content: Text("Have a pleasant Flight"),
    );
    showDialog(context: context, builder: (BuildContext context) => alert);
  }
}
