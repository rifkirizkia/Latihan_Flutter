import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum ColorEvent { toAmber, toLightblue }

class ColorBloc extends Bloc<ColorEvent, Color> {
  Color _color = Colors.amber;

  @override
  Color get initialState => Colors.amber;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    _color = (event == ColorEvent.toAmber) ? Colors.amber : Colors.lightBlue;
    yield _color;
  }
}
