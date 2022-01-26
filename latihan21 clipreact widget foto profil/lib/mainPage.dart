import 'package:flutter/material.dart';
import 'package:latihan22_clipreact_widget/secondPage.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Latihan Hero Animation",
            style: TextStyle(color: Colors.white)),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
        },
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 100,
              height: 100,
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
