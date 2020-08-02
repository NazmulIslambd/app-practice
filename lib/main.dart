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
  var item = List<String>.generate(1000, (counter) => "Item $counter");
  return item;
}

Widget getListView() {
  var listItem = getListElement();
  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      title: Text(listItem[index]),
      onTap: (){
        debugPrint("${listItem[index]} was tapped");
      },
    );
  });
  return listView;
}
