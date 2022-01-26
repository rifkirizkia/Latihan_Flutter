import 'package:flutter/material.dart';
import 'package:latihan42_doc_comment/user_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final UserProfile profile = UserProfile(
      name: "Harry Style",
      role: "Singger",
      photoUrl:
          "https://townsquare.media/site/252/files/2019/11/harry-styles1.jpg?w=1200&h=0&zc=1&s=0&a=t&q=89");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Doc Comment"),
      ),
      body: Center(
        child: profile,
      ),
    ));
  }
}
