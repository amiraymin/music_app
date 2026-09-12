import 'package:flutter/material.dart';
import 'package:music_app/models/top_playlists.dart';
import 'package:music_app/screens/see_all/see_all_favorite_artists.dart';
import 'package:music_app/screens/see_all/see_all_top_playlist.dart';
import 'package:music_app/screens/see_all/see_all_top_pop_songs.dart';
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
        padding: const EdgeInsets.all(15.0),
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
              // Trending songs
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
              // Top Playlists
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SeeAllTopPlaylist(),
                        ),
                      );
                    },
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1e71b6),
                      ),
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
              // Favorite Artists
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SeeAllFavoriteArtists(),
                        ),
                      );
                    },
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1e71b6),
                      ),
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
              // Popular Songs
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SeeAllTopPopSongs(),
                        ),
                      );
                    },
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1e71b6),
                      ),
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
