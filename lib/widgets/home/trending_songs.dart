import 'package:flutter/material.dart';
import 'package:music_app/models/trending_song.dart';
import 'dart:ui';

class TrendingSongs extends StatelessWidget {
  final TrendingModel trendModel;

  const TrendingSongs({super.key, required this.trendModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 220,
          width: 260,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(trendModel.coverImage),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        Positioned(
          top: 130,
          left: 10,
          right: 10,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
              child: Container(
                height: 80,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.5),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              trendModel.songTitle,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person_outline,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                Text(
                                  trendModel.artistName,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: const Color(0xff2ba2f7),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: const Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

List<TrendingModel> trendList = [
  TrendingModel(songTitle: "songTitle 1", artistName: "artistName 1", coverImage: "assets/images/cover4.png"),
  TrendingModel(songTitle: "songTitle 2", artistName: "artistName 2", coverImage: "assets/images/cover1.webp"),
  TrendingModel(songTitle: "songTitle 3", artistName: "artistName 3", coverImage: "assets/images/cover3.webp"),
  TrendingModel(songTitle: "songTitle 4", artistName: "artistName 4", coverImage: "assets/images/cover2.png"),
 
];
