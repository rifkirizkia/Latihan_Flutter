import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan41_bloc_state_management2/color_bloc.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc bloc = BlocProvider.of<ColorBloc>(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              backgroundColor: Colors.amber,
              onPressed: () {
                bloc.dispatch(ColorEvent.toLightblue);
              }),
          SizedBox(width: 10),
          FloatingActionButton(
              backgroundColor: Colors.lightBlue, onPressed: () {}),
        ],
      ),
      appBar: AppBar(
        title: Text("Bloc with flutter_bloc"),
      ),
      body: Center(
        child: BlocBuilder<ColorBloc, Color>(
          builder: (context, currentColor) => AnimatedContainer(
              width: 100,
              height: 100,
              color: currentColor,
              duration: Duration(milliseconds: 500)),
        ),
      ),
    );
  }
}
