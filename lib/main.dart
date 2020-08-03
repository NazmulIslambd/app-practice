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
              body: getListView())),
    );
  }
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
          },
        );
      });
  return listView;
}
