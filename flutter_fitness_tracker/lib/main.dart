import 'package:flutter/material.dart';
import 'package:flutter_fitness_tracker/view/screens/dashboaed_screen.dart';
import 'package:flutter_fitness_tracker/view/screens/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MaterialApp(
    home: SplashScreen(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => const SplashScreen()),
        GetPage(name: '/dashboard', page: () => const DashboardScreen()),
      ],
      theme: ThemeData.dark(),
      home: const DashboardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
