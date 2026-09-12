import 'package:flutter/material.dart';
import 'package:music_app/models/top_playlists.dart';
import 'package:music_app/screens/home/home_screen.dart';
import 'package:music_app/widgets/home/top_playlists_section.dart';

class SeeAllTopPlaylist extends StatelessWidget {
  const SeeAllTopPlaylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 100,
        scrolledUnderElevation: 0,
        backgroundColor: Color(0xff120f16),

        title: Text(
          "Top playlists",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Icon(
            Icons.arrow_back_ios_outlined,
            color: Color.fromARGB(255, 255, 255, 255),
            size: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.9,
            mainAxisSpacing: 10,
            crossAxisSpacing: 1,
            crossAxisCount: 2,
          ),
          itemCount: topPlayList2.length,
          itemBuilder: (context, index) {
            return TopPlaylistsSection(topPlay: topPlayList2[index]);
          },
        ),
      ),
    );
  }
}

final List<TopPlayModel> topPlayList2 = [
  TopPlayModel(
    topTitle: 'topTitle 1',
    topName: 'topName 1',
    topImage: 'assets/images/cover3.webp',
  ),
  TopPlayModel(
    topTitle: 'topTitle 2',
    topName: 'topName 2',
    topImage: 'assets/images/cover4.png',
  ),
  TopPlayModel(
    topTitle: 'topTitle 3',
    topName: 'topName 3',
    topImage: 'assets/images/cover1.webp',
  ),
  TopPlayModel(
    topTitle: 'topTitle 1',
    topName: 'topName 1',
    topImage: 'assets/images/cover3.webp',
  ),
  TopPlayModel(
    topTitle: 'topTitle 2',
    topName: 'topName 2',
    topImage: 'assets/images/cover4.png',
  ),
  TopPlayModel(
    topTitle: 'topTitle 3',
    topName: 'topName 3',
    topImage: 'assets/images/cover1.webp',
  ),
  TopPlayModel(
    topTitle: 'topTitle 1',
    topName: 'topName 1',
    topImage: 'assets/images/cover3.webp',
  ),
  TopPlayModel(
    topTitle: 'topTitle 2',
    topName: 'topName 2',
    topImage: 'assets/images/cover4.png',
  ),
  TopPlayModel(
    topTitle: 'topTitle 3',
    topName: 'topName 3',
    topImage: 'assets/images/cover1.webp',
  ),
  TopPlayModel(
    topTitle: 'topTitle 1',
    topName: 'topName 1',
    topImage: 'assets/images/cover3.webp',
  ),
  TopPlayModel(
    topTitle: 'topTitle 2',
    topName: 'topName 2',
    topImage: 'assets/images/cover4.png',
  ),
  TopPlayModel(
    topTitle: 'topTitle 3',
    topName: 'topName 3',
    topImage: 'assets/images/cover1.webp',
  ),
];
