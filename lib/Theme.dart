import 'package:flutter/material.dart';

class Mytheme {
  static ThemeData light(BuildContext context) => ThemeData(
      primarySwatch: Colors.blue,
      appBarTheme: AppBarTheme(elevation: 2, color: Colors.deepPurple),
      shadowColor: Color.fromARGB(255, 0, 0, 0),
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(caption: TextStyle(color: Colors.black)));
  static ThemeData dark(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
