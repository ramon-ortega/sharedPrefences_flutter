

import 'package:shared_preferences/shared_preferences.dart';

class Preferences {

  static late SharedPreferences _preferences;

  static String _name = '';
  static bool _isDarkmode = false;
  static int _genre = 1;

  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static String get name {
    return _preferences.getString('name') ?? _name;
  }

  static set name (String name) {
    _name = name;
    _preferences.setString('name', name);
  }

  static bool get isDarkmode {
    return _preferences.getBool('isDarkmode') ?? _isDarkmode;
  }

  static set isDarkmode(bool isDarkmode){
    _isDarkmode = isDarkmode;
    _preferences.setBool('isDarkmode', isDarkmode);
  }

  static int get genre{
    return _preferences.getInt('genre') ?? _genre;
  }

  static set genre(int genre){
    _genre = genre;
    _preferences.setInt('genre', genre);
  }

}