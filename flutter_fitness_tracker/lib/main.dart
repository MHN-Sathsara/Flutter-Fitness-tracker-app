import 'package:flutter/material.dart';
import 'package:flutter_fitness_tracker/screens/dashboaed_screen.dart';
import 'package:flutter_fitness_tracker/screens/splash_screen.dart';

void main() {
  runApp(const MaterialApp(
    home: SplashScreen(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashboardScreen(),
    );
  }
}
