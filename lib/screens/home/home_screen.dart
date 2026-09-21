import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/screens/home/home_header.dart';
import 'package:music_app/screens/home/favorite_artists.dart';
import 'package:music_app/screens/home/popular_songs.dart';
import 'package:music_app/screens/home/top_playlists.dart';
import 'package:music_app/screens/home/trending_songs.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeheader(),
      body: Padding(
        padding: EdgeInsets.all(20.r),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Welcome(),
              SizedBox(height: 16.h),
              SearchBox(),
              SizedBox(height: 16.h),
              trendingSongText(),
              SizedBox(height: 16.h),
              trendingSongsRow(),
              topPlaylistText(context),
              topPlaylistRow(),
              favoriteArtistsText(context),
              favoriteArtistsRow(),
              popularSongsText(context),
              popularSongsRow(),
            ],
          ),
        ),
      ),
    );
  }
}
