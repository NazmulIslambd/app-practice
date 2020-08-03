import 'package:flutter/material.dart';

void main() => runApp(MyHome());

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Long List",
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text("Long List View"),
        ),
        body: getListView(),


        //  This code declear for floating Button

        /* floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("FAB Clicked");
          },
          child: Icon(Icons.add),
          tooltip: 'Add One more Item',*/

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("FAB Clicked");
          },
          child: Icon(Icons.add),
          tooltip: 'Add one More Item',
        ),
      )),
    );
  }
}
//  function writing for create SnackBar

void showSnackBar(BuildContext context, String listItem) {
  var snackBar = SnackBar(
    content: Text("$listItem was tapped"),

    //  action use for show button on Snackbar
    action: SnackBarAction(
        label: "UNDO",
        onPressed: () {
          debugPrint("Performing dummy UNDO operation");
        }),
  );

  // scaffold declear for show snackbar

  Scaffold.of(context).showSnackBar(snackBar); //always declaer beneth FloatingActionButton
}

List<String> getListElement() {
  var items = List<String>.generate(20, (country) => "Item $country");
  return items;
}

Widget getListView() {
  var listItem = getListElement();

  var listView = ListView.builder(
      itemCount: listItem.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.arrow_right),
          title: Text(listItem[index]),
          onTap: () {
            debugPrint('${listItem[index]} was tapped');

//         here we declear  this code for collect items
            showSnackBar(context, listItem[index]);
          },
        );
      });
  return listView;
}
