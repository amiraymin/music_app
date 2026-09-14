import 'package:flutter/material.dart';
import 'package:music_app/screens/auth/splash_screen.dart';
import 'package:music_app/screens/home/main_home_screen.dart';

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF120F16)),
      home: const HomeScreen(),
    );
  }
}
