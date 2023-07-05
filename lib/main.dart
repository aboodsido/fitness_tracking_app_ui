import 'package:fitness_tracking_app/Screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Tracking App',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
