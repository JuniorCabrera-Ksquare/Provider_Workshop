import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:provider_class/controllers/theme_mode_provider.dart';
import 'package:provider_class/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final modeThemeProvider = Provider.of<ThemeModeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: modeThemeProvider.primaryColor,
      ),
      body: Center(
        child: Container(
          color: modeThemeProvider.backgroundColor,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondScreen()),
              );
            },
            child: const Text('Next Screen'),
          ),
        ),
      ),
    );
  }
}
