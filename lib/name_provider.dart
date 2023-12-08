import 'package:flutter/material.dart';

class dbname with ChangeNotifier {
  String _text1 = '';
  String _text2 = '';

  String get text1 => _text1;
  String get text2 => _text2;

  String get combinedText => '$_text1$_text2';

  void updateText1(String newText) {
    _text1 = newText;
    notifyListeners();
  }

  void updateText2(String newText) {
    _text2 = newText;
    notifyListeners();
  }
}

