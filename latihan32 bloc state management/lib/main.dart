import 'package:flutter/material.dart';
import 'package:latihan40_bloc_state_management/color_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ColorBloc bloc = ColorBloc();
  @override
  void dispose() {
    bloc.dispose;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
                backgroundColor: Colors.amber,
                onPressed: () {
                  bloc.eventSink.add(ColorEvent.toEmber);
                }),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
                backgroundColor: Colors.blue,
                onPressed: () {
                  bloc.eventSink.add(ColorEvent.toLighBlue);
                }),
          ],
        ),
        appBar: AppBar(
          title: Text("Bloc tanpa library"),
        ),
        body: Center(
          child: StreamBuilder<Color>(
              stream: bloc.stateStream,
              initialData: Colors.amber,
              builder: (context, snapshot) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  width: 100,
                  height: 100,
                  color: snapshot.data,
                );
              }),
        ),
      ),
    );
  }
}
