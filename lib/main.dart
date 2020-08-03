import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(Home());
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stateful App",
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: Scaffold(
        appBar: AppBar (title: (Text("Stateful")),),
        body :FavouriteCity()
      )),

    );
  }
}
class FavouriteCity extends StatefulWidget {
  @override
  _FavouriteCityState createState() => _FavouriteCityState();
}

class _FavouriteCityState extends State<FavouriteCity> {
 String nameCity ="";

  @override
  Widget build(BuildContext context) {
    debugPrint(
      "Favorite city Widget is created"
    );
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          TextField(onChanged: (String userInput){  //  replace onChanged by onSubmitted
            setState(() {
              debugPrint("set state is called , this tells framwork to redraw the favoite widget"); //  debugPrint called for testing pourpos.
              nameCity = userInput;
            });

          },),
          Padding(
            padding:EdgeInsets.all(30.0),
            child:  Text("your best city is $nameCity",style: TextStyle(fontSize: 20),),

          )


        ],
      ),
    );
  }
}


