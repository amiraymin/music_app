import 'package:flutter/material.dart';
import 'package:music_app/screens/home/home_screen.dart';
import 'package:music_app/screens/playlists/playlists_screen.dart';
import 'package:music_app/screens/profile/profile_screen.dart';
import 'package:music_app/screens/search/search_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const PlaylistsScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF120F16),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF120F16),
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: const Color(0xFF2CA2F8),
        unselectedItemColor: Colors.white,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home, size: 28, color: Color(0xFF2CA2F8)),
            icon: Icon(Icons.home_outlined, size: 28, color: Colors.white),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.search, size: 28, color: Color(0xFF2CA2F8)),
            icon: Icon(Icons.search, size: 28, color: Colors.white),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.library_music, size: 28, color: Color(0xFF2CA2F8)),
            icon: Icon(Icons.library_music_outlined, size: 28, color: Colors.white),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.person, size: 28, color: Color(0xFF2CA2F8)),
            icon: Icon(Icons.person_outline, size: 28, color: Colors.white),
            label: '',
          ),
        ],
      ),
    );
  }
}