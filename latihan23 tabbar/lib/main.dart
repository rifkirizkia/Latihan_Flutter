import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  TabBar myTabBar = TabBar(
      indicator: BoxDecoration(
          color: Colors.pink[200],
          border: Border(top: BorderSide(color: Colors.red, width: 5))),
      // indicatorColor: Colors.pink[200], //mengubah warna indicator yang di bawah
      tabs: [
        Tab(
          icon: Icon(Icons.comment),
          text: "Comment",
        ),
        Tab(
          icon: Icon(Icons.computer),
          text: "Computer",
        )
      ]);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Contoh Tab Bar"),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
              child: Container(color: Colors.purple, child: myTabBar)),
        ),
        body: TabBarView(children: [
          Center(child: Text("Tab1")),
          Center(child: Text("Tab2")),
        ]),
      ),
    ));
  }
}
