import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/screens/see_all/see_all_favorite_artists.dart';
import 'package:music_app/widgets/home/favorite_artists_section.dart';

Row favoriteArtistsText(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: Text(
          "Favourite Artists",
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: Color(0xffFFFFFF),
          ),
        ),
      ),
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
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff1e71b6),
          ),
        ),
      ),
    ],
  );
}

Widget favoriteArtistsRow() {
  return SizedBox(
    height: 200.h,
    width: double.infinity,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, ind) => FavoriteArtists(favactor: favArtist[ind]),
      separatorBuilder: (context, i) => SizedBox(width: 10.w),
      itemCount: favArtist.length,
    ),
  );
}
