import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/screens/see_all/see_all_top_playlist.dart';
import 'package:music_app/widgets/home/top_playlists_section.dart';

Row topPlaylistRow() {
  return Row(
    children: [
      Expanded(
        child: SizedBox(
          height: 220.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: topPlayList.length,
            itemBuilder: (context, i) =>
                TopPlaylistsSection(topPlay: topPlayList[i]),
            separatorBuilder: (context, i) => SizedBox(width: 10.w),
          ),
        ),
      ),
    ],
  );
}

Row topPlaylistText(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Top Playlists",
        style: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
          color: const Color(0xffFFFFFF),
        ),
      ),
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SeeAllTopPlaylist()),
          );
        },
        child: Text(
          "See All",
          style: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xff1e71b6),
          ),
        ),
      ),
    ],
  );
}