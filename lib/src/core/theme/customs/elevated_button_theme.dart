import 'package:flutter/material.dart';

class KElevatedButtonTheme {
  static ElevatedButtonThemeData elevatedButton = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      minimumSize: const Size.fromHeight(55),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
    ),
  );
  static ElevatedButtonThemeData elevatedButtonDark = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      textStyle: const TextStyle(fontSize: 20),
      backgroundColor: Colors.blue,
      minimumSize: const Size.fromHeight(55),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
    ),
  );
}
