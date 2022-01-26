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
  TextEditingController controller = TextEditingController(text: "No Name");
  bool isOn = false;

  void saveData() async{
    SharedPrefe
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Shared"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
            ),
            Switch(
              value: isOn,
              onChanged: (newValue) {
                setState(() {
                  isOn = newValue;
                });
              },
            ),
            RaisedButton(child: Text("save"), onPressed: (){

            },),
            RaisedButton(child: Text("load"), onPressed: (){

            },),
          ],
        ),
      ),
    ));
  }
}
