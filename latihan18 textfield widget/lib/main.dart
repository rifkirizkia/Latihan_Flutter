import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// untuk menggunakan icon tambahan ketik di terminal
// flutter pub add flutter_svg
// lalu import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Text Field Widget")),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.adb), //icon diluar TextField
                fillColor: Colors.purple[50],
                filled: true,
                suffix: Container(
                  width: 5,
                  height: 5,
                  color: Colors.purple,
                ), //jika memakai prefix/suffix maka tidak boleh menggunakan prefix/suffix text dan prefix/suffix style
                prefixIcon: Icon(Icons.email), //icon didalam TextField
                prefixText: "E-Mail",
                prefixStyle: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600), //text didalam TextField
                labelText: "E-Mail", //text diluar TextField
                labelStyle:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
                hintText: "example@gmail.com",
                hintStyle: TextStyle(fontSize: 12),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              // obscureText: true, //untuk password
              onChanged: (value) {
                setState(() {});
              },
              controller: controller,
            ),
            TextField(
              obscureText: true, //untuk inputan password
              decoration: InputDecoration(
                icon: Icon(Icons.adb), //icon diluar TextField
                fillColor: Colors.purple[50],
                filled: true,
                suffix: Container(
                  width: 5,
                  height: 5,
                  color: Colors.purple,
                ), //jika memakai prefix/suffix maka tidak boleh menggunakan prefix/suffix text dan prefix/suffix style
                prefixIcon: Icon(Icons.password), //icon didalam TextField
                prefixText: "Password",
                prefixStyle: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600), //text didalam TextField
                labelText: "Password", //text diluar TextField
                labelStyle:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
                hintText: "example@gmail.com",
                hintStyle: TextStyle(fontSize: 12),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Text(controller.text)
          ],
        ),
      ),
    ));
  }
}
