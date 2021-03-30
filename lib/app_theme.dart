import 'package:flutter/material.dart';

const Color kColor = Color(0xffffee88);


ThemeData buildThemeData(BuildContext context) {
  return ThemeData(
    primaryColor: Colors.amber,
    accentColor: Colors.brown,

    appBarTheme: AppBarTheme.of(context).copyWith(
      color: Colors.amber,
    ),
    textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(primary: Colors.blueAccent)),
    scaffoldBackgroundColor: const Color(0xFFf0efeb),

    outlinedButtonTheme: OutlinedButtonThemeData(style: TextButton.styleFrom(primary: Colors.amber)),

  );
}
