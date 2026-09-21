import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/screens/home/favorite_artists.dart';
import 'package:music_app/screens/home/popular_songs.dart';
import 'package:music_app/screens/home/top_playlists.dart';
import 'package:music_app/screens/home/trending_songs.dart';
import 'package:music_app/screens/home/home_header.dart';

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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Welcome(),
              SizedBox(height: 16.h),
              SearchBox(),
              SizedBox(height: 16.h),
              trendingSongText(),
              SizedBox(height: 16.h),
              // Trending songs
              trendingSongsRow(),
              // Top Playlists
              topPlaylistText(context),
              topPlaylistRow(),
              // Favorite Artists
              favoriteArtistsText(context),
              favoriteArtistsRow(),
              // popularSongs
              popularSongsText(context),
              popularSongsRow(),
            ],
          ),
        ),
      ),
    );
  }
}
