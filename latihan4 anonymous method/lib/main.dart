import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "Ini Adalah Text";
  // void tombolDitekan() {
  //   setState(() {
  //     message = "Tombol Sudah Ditekan";
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymous Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              RaisedButton(
                child: Text("Tekan Saya"),
                onPressed: () {
                  //tidak menggunakan nama method
                  setState(() {
                    //untuk mereload
                    message = "Tombol Sudah Ditekan";
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
