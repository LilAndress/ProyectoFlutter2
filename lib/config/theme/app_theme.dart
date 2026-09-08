
import 'package:flutter/material.dart';

class Apptheme {

  ThemeData themeData() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(color : Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
        
      ),
      brightness: Brightness.dark,
    );
  }

}