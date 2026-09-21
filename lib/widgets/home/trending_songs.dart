import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/models/trending_song.dart';
import 'dart:ui';

import 'package:music_app/screens/player/play_song_screen.dart';

class TrendingSongs extends StatelessWidget {
  final TrendingModel trendModel;

  const TrendingSongs({super.key, required this.trendModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.hardEdge,
      children: [
        Container(
          height: 220.h,
          width: 260.w,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(trendModel.coverImage),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20.r),
          ),
        ),
        Positioned(
          left: 10.w,
          right: 10.w,
          bottom: 10.h,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
              child: Container(
                height: 80.h,
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.5),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.r),
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
                                fontSize: 18.spMin,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person_outline,
                                  color: Colors.white,
                                  size: 16.r,
                                ),
                                Expanded(
                                  child: Text(
                                    trendModel.artistName,
                                    style: TextStyle(
                                      fontSize: 14.spMin,
                                      color: Colors.white,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 45.r,
                        width: 45.r,
                        decoration: BoxDecoration(
                          color: const Color(0xff2ba2f7),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PlaySongScreen(trendingplayer: trendModel),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 20.r,
                          ),
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
  TrendingModel(
    songTitle: "songTitle 1",
    artistName: "artistName 1",
    coverImage: "assets/images/cover4.png",
  ),
  TrendingModel(
    songTitle: "songTitle 2",
    artistName: "artistName 2",
    coverImage: "assets/images/cover1.webp",
  ),
  TrendingModel(
    songTitle: "songTitle 3",
    artistName: "artistName 3",
    coverImage: "assets/images/cover3.webp",
  ),
  TrendingModel(
    songTitle: "songTitle 4",
    artistName: "artistName 4",
    coverImage: "assets/images/cover2.png",
  ),
];
