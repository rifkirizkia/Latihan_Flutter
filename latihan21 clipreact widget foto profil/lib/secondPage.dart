import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[200],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Latihan Hero Animation",
            style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: 200,
              height: 200,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://qph.fs.quoracdn.net/main-qimg-00a3f9e39e60a01fb6299c6a5e9648be"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
