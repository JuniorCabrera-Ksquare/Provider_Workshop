import 'package:flutter/material.dart';

class ThemeModeProvider extends ChangeNotifier{
  Color primaryColor = Colors.orange;
  Color backgroundColor = Colors.white;
  var iconFloatingElevationButton = const Icon(Icons.mode_night);

  void changeThemeToDark(){
   primaryColor = Colors.black;
   backgroundColor = Colors.grey;
  iconFloatingElevationButton = const Icon(Icons.sunny);
  notifyListeners();
  }

  void changeThemeToLight(){
   primaryColor = Colors.orange;
   backgroundColor = Colors.white;
  iconFloatingElevationButton = const Icon(Icons.mode_night);
  notifyListeners();
  }
}