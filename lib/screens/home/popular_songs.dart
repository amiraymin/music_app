import 'package:flutter/material.dart';
import 'package:music_app/screens/see_all/see_all_top_pop_songs.dart';
import 'package:music_app/widgets/home/popular_songs_section.dart';

Row popularSongsRow() {
  return Row(
    children: [
      SizedBox(
        height: 200,
        width: 366,
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, i) => PopularSongsSection(popularson: pops[i]),
          separatorBuilder: (context, i) => SizedBox(width: 10),
          itemCount: pops.length,
        ),
      ),
    ],
  );
}

Row popularSongsText(BuildContext context) {
  return Row(
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
            MaterialPageRoute(builder: (context) => SeeAllTopPopSongs()),
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
