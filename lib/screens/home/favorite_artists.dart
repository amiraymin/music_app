import 'package:flutter/material.dart';
import 'package:music_app/screens/see_all/see_all_favorite_artists.dart';
import 'package:music_app/widgets/home/favorite_artists_section.dart';

Row favoriteArtistsText(BuildContext context) {
  return Row(
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
            MaterialPageRoute(builder: (context) => SeeAllFavoriteArtists()),
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

Row favoriteArtistsRow() {
  return Row(
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
  );
}
