import 'package:flutter/material.dart';
import 'package:music_app/models/top_playlists.dart';

class TopPlaylistsSection extends StatelessWidget {
  final TopPlayModel topPlay;

  const TopPlaylistsSection({
    super.key,
    required this.topPlay
     });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                image: DecorationImage(
                  image: AssetImage(topPlay.topImage),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            SizedBox(height: 5,),
                        

            Text(
              topPlay.topName,
              style: TextStyle(
                color: Color.fromARGB(255, 241, 241, 241),
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              topPlay.topTitle,
              style: TextStyle(color: Color.fromARGB(255, 241, 241, 241)),
            ),
          ],
        ),
      ],
    );
  }
}
List<TopPlayModel> topPlayList = [
  TopPlayModel(topTitle: "topTitle 1", topName: "topName 1", topImage: "assets/images/cover3.webp"),
  TopPlayModel(topTitle: "topTitle 2", topName: "topName 2", topImage: "assets/images/cover4.png"),
  TopPlayModel(topTitle: "topTitle 3", topName: "topName 3", topImage: "assets/images/cover1.webp"),
    TopPlayModel(topTitle: "topTitle 1", topName: "topName 1", topImage: "assets/images/cover3.webp"),
  TopPlayModel(topTitle: "topTitle 2", topName: "topName 2", topImage: "assets/images/cover4.png"),
  TopPlayModel(topTitle: "topTitle 3", topName: "topName 3", topImage: "assets/images/cover1.webp"),
    TopPlayModel(topTitle: "topTitle 1", topName: "topName 1", topImage: "assets/images/cover3.webp"),
  TopPlayModel(topTitle: "topTitle 2", topName: "topName 2", topImage: "assets/images/cover4.png"),
  TopPlayModel(topTitle: "topTitle 3", topName: "topName 3", topImage: "assets/images/cover1.webp"),
    TopPlayModel(topTitle: "topTitle 1", topName: "topName 1", topImage: "assets/images/cover3.webp"),
  TopPlayModel(topTitle: "topTitle 2", topName: "topName 2", topImage: "assets/images/cover4.png"),
  TopPlayModel(topTitle: "topTitle 3", topName: "topName 3", topImage: "assets/images/cover1.webp"),
];