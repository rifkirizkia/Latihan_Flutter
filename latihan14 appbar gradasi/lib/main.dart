import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.adb, color: Colors.blue),
          title: Text(
            "E-Learnity",
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.settings), onPressed: () {}),
            IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {}),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xBB5DCA), Color(0x4886FF)],
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter),
                image: DecorationImage(
                    image: AssetImage("images/bagianatas.png"),
                    fit: BoxFit.none,
                    repeat: ImageRepeat.repeat)),
          ),
        ),
      ),
    );
  }
}
