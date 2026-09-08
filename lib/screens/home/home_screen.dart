import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/music_logo.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text('Welcome to the Music App!\nEnjoy your music experience.'),
        ],
      ),
    );
  }
}