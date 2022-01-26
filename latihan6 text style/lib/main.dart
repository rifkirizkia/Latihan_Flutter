import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Text Style"),
        ),
        body: Center(
          child: Text(
            "Ini Adalah Text",
            style: TextStyle(
              fontFamily: "JackSimba",
              fontSize: 40,
              color: Colors.blue[900],
              decoration: TextDecoration.underline,
              decorationColor: Colors.red[900],
              decorationThickness: 5,
              decorationStyle: TextDecorationStyle.double,
            ),
          ),
        ),
      ),
    );
  }
}
