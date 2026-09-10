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
  int currentIndex = 0; // Track the current index of the selected item
  List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    PlaylistsScreen(),
    ProfileScreen(),
  ];
  // Add your pages here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF120F16),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home, size: 30, color: Color(0xff2ca2f8)),
            icon: Icon(Icons.home_rounded, size: 30, color: Color(0xffFFFFFF)),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.search, size: 30, color: Color(0xff2ca2f8)),
            icon: Icon(Icons.search, size: 30, color: Color(0xffFFFFFF)),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.library_music_outlined,
              size: 30,
              color: Color(0xff2ca2f8),
            ),
            icon: Icon(
              Icons.library_music_outlined,
              size: 30,
              color: Color(0xffFFFFFF),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.person, size: 30, color: Color(0xff2ca2f8)),
            icon: Icon(
              Icons.person_outline_sharp,
              size: 30,
              color: Color(0xffFFFFFF),
            ),
            label: '',
          ),
        ],
        currentIndex:
            currentIndex, // Set the current index of the selected item
        selectedItemColor: Colors.blue, // Set the color of the selected item
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
          // Handle navigation based on the selected index
        },
      ),
    );
  }
}
