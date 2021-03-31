import 'package:flutter/material.dart';

class Controler extends ChangeNotifier {
  static Controler instance = Controler();
  bool isColorTheme = false;

  changeTheme() {
    isColorTheme = !isColorTheme;
    notifyListeners();
  }
}
