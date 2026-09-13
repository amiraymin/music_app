import 'package:flutter/material.dart';
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
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Welcome(),
              SizedBox(height: 16),
              SearchBox(),
              SizedBox(height: 16),
              trendingSongText(),
              SizedBox(height: 16),
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
