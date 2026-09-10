import 'package:flutter/material.dart';
import 'package:music_app/models/favorite_artists.dart';
import 'package:music_app/models/popular_songs.dart';
import 'package:music_app/models/top_playlists.dart';
import 'package:music_app/widgets/home/favorite_artists_section.dart';
import 'package:music_app/widgets/home/home_header.dart';
import 'package:music_app/widgets/home/popular_songs_section.dart';
import 'package:music_app/widgets/home/top_playlists_section.dart';
import 'package:music_app/widgets/home/trending_songs.dart';

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
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Welcome(),
              SizedBox(height: 16),
              SearchBox(),
              SizedBox(height: 16),
              Text(
                'Trending Songs',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFFFFFF),
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  SizedBox(
                    height: 220,
                    width: 366,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: trendList.length,
                      itemBuilder: (context, index) =>
                          TrendingSongs(trendModel: trendList[index]),
                      separatorBuilder: (context, index) => SizedBox(width: 10),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Top Playlists",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  SizedBox(height: 50),
                  SizedBox(width: 192),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1e71b6),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  SizedBox(
                    height: 220,
                    width: 366,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: topPlayList.length,
                      itemBuilder: (context, i) =>
                          TopPlaylistsSection(topPlay: topPlayList[i]),
                      separatorBuilder: (context, i) => SizedBox(width: 10),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Favourite Artists",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  SizedBox(height: 50),
                  SizedBox(width: 150),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1e71b6),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 200,
                    width: 366,

                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, ind) =>
                          FavoriteArtists(favactor: favArtist[ind]),

                      separatorBuilder: (context, i) => SizedBox(width: 10),
                      itemCount: favArtist.length,
                    ),
                  ),
                ],
              ),
               Row(
              children: [
                Text(
                  "Popular Songs",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                SizedBox(height: 50),
                SizedBox(width: 177),
                Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff1e71b6),
                  ),
                ),
              ],
            ),
              Row(
                children: [
                  SizedBox(
                    height: 200,
                    width: 366,

                    child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, i) =>
                          PopularSongsSection(popularson: pops[i]),

                      separatorBuilder: (context, i) => SizedBox(width: 10),
                      itemCount: pops.length,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

