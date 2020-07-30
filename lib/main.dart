import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exploring UI widgets",
      debugShowCheckedModeBanner: false,
      color: Colors.blueGrey,
      home: SafeArea(
          child: Scaffold(
            body: getListView(),
          )),
    );
  }
}


Widget getListView() {
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("landscape"),
        subtitle: Text("Beautiful View"),
        trailing: Icon(Icons.wb_sunny),
      ),
      ListTile(
        leading: Icon(Icons.pages),
        title: Text("landscape"),

        trailing: Icon(Icons.satellite),
      ),
      ListTile(
        leading: Icon(Icons.pageview),
        title: Text("landscape"),
        subtitle: Text("Beautiful View"),

      ),
    ],
  );
  return listView;
}
