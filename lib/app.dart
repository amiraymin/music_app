
import 'package:flutter/material.dart';
import 'package:music_app/widgets/common/bottom_nav_bar.dart';

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF120F16),
      ),
      home: const BottomNavBar(),
    );
  }
}

