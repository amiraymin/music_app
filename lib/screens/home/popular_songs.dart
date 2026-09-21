import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/screens/see_all/see_all_top_pop_songs.dart';
import 'package:music_app/widgets/home/popular_songs_section.dart';

Widget popularSongsRow() {
  return SizedBox(
    height: 200.h,
    width: double.infinity,
    child: ListView.separated(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, i) => PopularSongsSection(popularson: pops[i]),
      separatorBuilder: (context, i) => SizedBox(height: 10.h),
      itemCount: pops.length,
    ),
  );
}

Row popularSongsText(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: Text(
          "Popular Songs",
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
            MaterialPageRoute(builder: (context) => SeeAllTopPopSongs()),
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
