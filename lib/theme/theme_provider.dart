import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = ThemeData.light();

  ThemeData get themeData => _themeData;
  bool get isDarkMode => _themeData == ThemeData.dark();

  ThemeProvider({required bool isDark}) {
    _themeData = isDark ? ThemeData.dark() : ThemeData.light();
  }

  void toggleTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (_themeData == ThemeData.light()) {
      _themeData = ThemeData.dark();
      sharedPreferences.setBool('is_dark', true);
    } else {
      _themeData = ThemeData.light();
      sharedPreferences.setBool('is_dark', false);
    }
    notifyListeners();
  }
}
