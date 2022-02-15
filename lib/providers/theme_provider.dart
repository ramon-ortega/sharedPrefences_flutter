

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{

  ThemeData currentTheme;

  ThemeProvider({
    required bool isDarkmode
  }): currentTheme = isDarkmode ? ThemeData.dark() : ThemeData.light(); 

  setThemeLight(){
    currentTheme = ThemeData.light();
    notifyListeners();
  }

  setThemeDark(){
    currentTheme = ThemeData.dark();
    notifyListeners();
  }


}