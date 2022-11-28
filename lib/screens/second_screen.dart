import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_class/controllers/theme_mode_provider.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    final modeThemeProvider = Provider.of<ThemeModeProvider>(context);
    return Scaffold(
      appBar: AppBar(backgroundColor: modeThemeProvider.primaryColor),
      body: Container(color: modeThemeProvider.backgroundColor),
      floatingActionButton: FloatingActionButton(
          backgroundColor: modeThemeProvider.primaryColor,
          child: modeThemeProvider.iconFloatingElevationButton,
          onPressed: () {
            modeThemeProvider.primaryColor == Colors.orange
                ? modeThemeProvider.changeThemeToDark()
                : modeThemeProvider.changeThemeToLight();
          }),
    );
  }
}
