import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/widgets/home/trending_songs.dart';

Widget trendingSongsRow() {
  return SizedBox(
    height: 220.h,
    width: double.infinity,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: trendList.length,
      itemBuilder: (context, index) =>
          TrendingSongs(trendModel: trendList[index]),
      separatorBuilder: (context, index) => SizedBox(width: 10.w),
    ),
  );
}

Text trendingSongText() {
  return Text(
    'Trending Songs',
    style: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
      color: Color(0xffFFFFFF),
    ),
  );
}
