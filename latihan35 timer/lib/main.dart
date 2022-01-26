import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isStop = true;
  bool isBlack = true;
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Timer"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              counter.toString(),
              style: TextStyle(
                  color: (isBlack) ? Colors.black : Colors.blue,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
                child: Text("Ubah warna 5 detik kemudian"),
                onPressed: () {
                  Timer(Duration(seconds: 5), () {
                    setState(() {
                      isBlack = !isBlack;
                    });
                  });
                }),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
                child: Text("Ubah warna secara langsung"),
                onPressed: () {
                  Timer.run(() {
                    setState(() {
                      isBlack = !isBlack;
                    });
                  });
                }),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
                child: Text("Start Timer"),
                onPressed: () {
                  counter = 0;
                  isStop = false;
                  Timer.periodic(Duration(seconds: 1), (timer) {
                    if (isStop) timer.cancel();
                    setState(() {
                      counter++;
                    });
                  });
                }),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
                child: Text("Stop Timer"),
                onPressed: () {
                  isStop = true;
                })
          ],
        ),
      ),
    ));
  }
}
