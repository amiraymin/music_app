import 'package:flutter/material.dart';
import 'package:music_app/screens/see_all/see_all_top_playlist.dart';
import 'package:music_app/widgets/home/top_playlists_section.dart';

Row topPlaylistRow() {
  return Row(
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
  );
}

Row topPlaylistText(BuildContext context) {
  return Row(
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
            MaterialPageRoute(builder: (context) => SeeAllTopPlaylist()),
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
  );
}
