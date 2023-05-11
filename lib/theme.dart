import 'package:flutter/material.dart';

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = false;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  get backgroundColor => null;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
        primaryColor: Colors.lightBlue,
        secondaryHeaderColor: Colors.blueGrey,
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          headline1: TextStyle(color: Colors.white),
          headline2: TextStyle(color: Colors.white),
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ));
  }

  static ThemeData get darkTheme {
    return ThemeData(
        primaryColor: Colors.black,
        secondaryHeaderColor: Colors.grey,
        backgroundColor: Colors.grey,
        scaffoldBackgroundColor: Colors.grey,
        textTheme: const TextTheme(
          headline1: TextStyle(color: Colors.grey),
          headline2: TextStyle(color: Colors.grey),
          bodyText1: TextStyle(color: Colors.grey),
          bodyText2: TextStyle(color: Colors.grey),
        ));
  }
}
