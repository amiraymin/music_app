import 'dart:async';

import 'package:flutter/material.dart';
import '../../widgets/auth_widgets.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      if (mounted) replaceScreen(context, const OnboardingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Center(
        child: SizedBox(
          width: 180,
          height: 180,
          child: Image.asset('assets/images/music_logo.png'),
        ),
      ),
    );
  }
}
