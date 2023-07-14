import 'package:flutter/material.dart';

class MyModel extends ChangeNotifier {
  int _variableValue = 0;

  int get variableValue => _variableValue;

  void setVariableValue() {
    _variableValue = (_variableValue + 1);
    notifyListeners();
  }
}
