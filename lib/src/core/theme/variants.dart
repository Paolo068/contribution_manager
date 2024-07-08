import 'package:flutter/material.dart';

import 'customs/elevated_button_theme.dart';
import 'customs/input_text_theme.dart';
import 'customs/outlined_button_theme.dart';

/// Light Theme
final lightTheme = ThemeData.light(useMaterial3: true).copyWith(
  elevatedButtonTheme: KElevatedButtonTheme.elevatedButton,
  outlinedButtonTheme: KOutlinedButtonTheme.outlinedButton,
  inputDecorationTheme: KInputTextTheme.inputText,
);

/// Dark Theme
final darkTheme = ThemeData.dark(useMaterial3: true).copyWith(
  elevatedButtonTheme: KElevatedButtonTheme.elevatedButtonDark,
  outlinedButtonTheme: KOutlinedButtonTheme.outlinedButtonDark,
  inputDecorationTheme: KInputTextTheme.inputTextDark,
);
