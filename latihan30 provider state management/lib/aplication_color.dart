import 'package:flutter/material.dart';

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
