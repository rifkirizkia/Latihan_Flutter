import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Widget"),
        ),
        body: Center(
          child: Container(
            color: Colors.blue[200],
            width: 200,
            height: 200,
            padding: EdgeInsets.all(3),
            child: Image(
              image: AssetImage("img/gbr1.jpg"),
              fit: BoxFit.cover,
              // image: NetworkImage(
              //menggunkan gambar dari google
              //     "https://cdn-images-1.medium.com/max/1200/1*mMJ3IvaAuMAmqjtyistCog.png"),
              //     fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
