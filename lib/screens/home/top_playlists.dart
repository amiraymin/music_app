import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/screens/see_all/see_all_top_playlist.dart';
import 'package:music_app/widgets/home/top_playlists_section.dart';

Widget topPlaylistRow() {
  return SizedBox(
    height: 220.h,
    width: double.infinity,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: topPlayList.length,
      itemBuilder: (context, i) =>
          TopPlaylistsSection(topPlay: topPlayList[i]),
      separatorBuilder: (context, i) => SizedBox(width: 10.w),
    ),
  );
}

Row topPlaylistText(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: Text(
          "Top Playlists",
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
            MaterialPageRoute(builder: (context) => SeeAllTopPlaylist()),
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
