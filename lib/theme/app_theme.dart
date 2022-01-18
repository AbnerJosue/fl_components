import 'package:flutter/material.dart';

class AppTheme {
  // declared theme color

  static const Color primay = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // PRIMARY COLOR
      primaryColor: Colors.indigo,

      // THEME APPBAR
      appBarTheme: const AppBarTheme(color: primay, elevation: 0),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primay)
      ),

      // floating acction button
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primay,
        elevation: 0,
      ),

      //ElevatedButtons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: Colors.indigo[500],
          shape: const StadiumBorder(),
        )
      ),
    );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      // PRIMARY COLOR
      primaryColor: Colors.indigo,
      // THEME APPBAR
      appBarTheme: const AppBarTheme(color: primay, elevation: 0)
      
    );


              
}
