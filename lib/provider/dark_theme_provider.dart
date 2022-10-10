import 'package:flutter/cupertino.dart';

import '../services/dark_theme_prefs.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThemePrefs darkThemePrefs = DarkThemePrefs();
  bool _darkTheme = false;

  //getter to return the upper value
  bool get getDarkTheme => _darkTheme;

  //initialize a setter
  set setDarkTheme(bool value) {
    _darkTheme = value;
    darkThemePrefs.setDarkTheme(value);
    notifyListeners(); //tells ChangeNotifier that something changed
  }
}
