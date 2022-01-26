// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Custom Proggres bar"),
      ),
      body: Center(
          child: ChangeNotifierProvider<TimeState>(
        create: (context) => TimeState(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<TimeState>(
                builder: (context, timeState, child) => CustomProggresBar(
                    width: 200, value: timeState.time, totalValue: 15)),
            const SizedBox(
              height: 10,
            ),
            Consumer<TimeState>(
              // ignore: deprecated_member_use
              builder: (context, timeState, child) => RaisedButton(
                  color: Colors.lightBlue,
                  onPressed: () {
                    Timer.periodic(Duration(seconds: 1), (timer) {
                      if (timeState.time == 0)
                        timer.cancel();
                      else
                        timeState.time -= 1;
                      Text("time out");
                    });
                  },
                  child: Text("Start", style: TextStyle(color: Colors.white))),
            )
          ],
        ),
      )),
    ));
  }
}

class CustomProggresBar extends StatelessWidget {
  final double width;
  final int value;
  final int totalValue;

  // ignore: use_key_in_widget_constructors
  const CustomProggresBar(
      {this.width = 0, this.value = 0, this.totalValue = 0});
  @override
  Widget build(BuildContext context) {
    double ratio = value / totalValue;
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        Icons.timer,
        color: Colors.grey[700],
      ),
      const SizedBox(
        width: 5,
      ),
      Stack(
        children: [
          Container(
            width: width,
            height: 10,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(5)),
          ),
          Material(
            borderRadius: BorderRadius.circular(5),
            elevation: 3,
            child: AnimatedContainer(
              height: 10,
              width: width * ratio,
              duration: const Duration(milliseconds: 500),
              decoration: BoxDecoration(
                  color: (ratio < 0.3)
                      ? Colors.red
                      : (ratio < 0.6)
                          ? Colors.amber
                          : Colors.lightGreen,
                  borderRadius: BorderRadius.circular(5)),
            ),
          )
        ],
      ),
    ]);
  }
}

class TimeState with ChangeNotifier {
  ///time = 15
  int _time = 15;

  ///time = 15
  int get time => _time;
  set time(int newTime) {
    _time = newTime;
    notifyListeners();
  }
}
