import 'dart:ui';

import 'package:flutter/material.dart';

class Colors1 {
  static Color green = Color.fromARGB(255, 22, 219, 101);
  static Color primary = Color.fromARGB(255, 24, 24, 32);
  static Color secundary = Color.fromARGB(255, 32, 32, 41);
  static Color gray = Color.fromARGB(255, 72, 72, 72);
  static Color white = Color.fromARGB(255, 235, 235, 235);
}

class TextStylesA {
  static TextStyle greenBoldText = TextStyle(color: Colors1.green, fontFamily: 'Roboto', fontWeight: FontWeight.bold, fontSize: 16);
  static TextStyle lowText = TextStyle(color: Colors1.gray, fontFamily: 'Roboto', fontSize: 16);
  static TextStyle blackText = TextStyle(color: Colors1.secundary, fontFamily: 'Roboto', fontSize: 16);
  static TextStyle whiteText = TextStyle(color: Colors1.white, fontFamily: 'Roboto', fontSize: 16);
  static TextStyle whiteBoldText = TextStyle(color: Colors1.white, fontFamily: 'Roboto', fontSize: 16, fontWeight: FontWeight.bold);
  static TextStyle bigWhiteBoldText = TextStyle(color: Colors1.white, fontFamily: 'Roboto', fontSize: 32, fontWeight: FontWeight.bold);
  static TextStyle bigLowText = TextStyle(color: Colors1.gray, fontFamily: 'Roboto', fontSize: 32);
}