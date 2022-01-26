import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Container"),
        ),
        body: Container(
          color: Colors.blue,
          margin: const EdgeInsets.fromLTRB(10, 15, 10,
              20), //jarak antara container dengan container->(Left Top Right Bottom) mempunyai sisi yang berbeda beda
          padding: const EdgeInsets.only(
              bottom: 10,
              top:
                  10), //jarak antara container dengan widget-> (Only) hanya sisi tertentu yang di berikan jarak
          child: Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.topLeft, //gradien mulai dari
                    end: Alignment.bottomRight, //gradien berakhir di
                    colors: <Color>[
                      Colors.deepPurple,
                      Colors.blueAccent,
                    ])),
          ),
        ),
      ),
    );
  }
}
