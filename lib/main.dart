import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stateful Widget',
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text("Stateful App"),
        ),
        body: FavoriteCity(),
      )),
    );
  }
}

class FavoriteCity extends StatefulWidget {
  @override
  _FavoriteCityState createState() => _FavoriteCityState();
}

class _FavoriteCityState extends State<FavoriteCity> {
  var cityName = "";

  //  DropDown Variable
  var _currencies = ['Tk', 'Dollars', 'Pounds', 'Others', 'Currencies'];
  var _currentItemSelected = "Currencies";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30.0),
      child: Column(
        children: <Widget>[
          TextField(
            onSubmitted: (String userInput) {
              setState(() {
                cityName = userInput;
              });
            },
          ),
          //  Here we create dropdown button
          DropdownButton<String>(
            items: _currencies.map((String dropDownStringItem) {

              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem),
              );
            }).toList(),
            onChanged: (String newValueSelected) {
              _onDropDownItemSelected(newValueSelected);
            },
            value:
                _currentItemSelected, //  method declare for show current value
          ),

          Padding(
            padding: EdgeInsets.all(30.0),
            child: Text("your best city is $cityName"),
          )
        ],
      ),
    );
  }

  //  create method for set item
  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
}
