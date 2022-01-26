import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ChangeNotifierProvider<AplicationColor>(
            create: (context) => AplicationColor(),
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black,
                title: Consumer<AplicationColor>(
                  builder: (context, value, child) => Text(
                    "Provider State Management",
                    style: TextStyle(
                      color: value.color,
                    ),
                  ),
                ),
              ),
              body: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer<AplicationColor>(
                    builder: (context, value, child) => AnimatedContainer(
                      margin: EdgeInsets.all(5),
                      width: 100,
                      height: 100,
                      color: value.color,
                      duration: Duration(milliseconds: 500),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(margin: EdgeInsets.all(5), child: Text("AB")),
                      Consumer<AplicationColor>(
                          builder: (context, value, child) => Switch(
                              value: value._isLB,
                              onChanged: (newValue) {
                                value.isLB = newValue;
                              })),
                      Container(margin: EdgeInsets.all(5), child: Text("BL"))
                    ],
                  )
                ],
              )),
            )));
  }
}

class AplicationColor with ChangeNotifier {
  // _ (Underscore) = private
  bool _isLB = true;
  bool get isLB => _isLB;
  set isLB(bool value) {
    _isLB = value;
    notifyListeners();
  }

  Color get color => _isLB ? Colors.blue : Colors.amber;
}
