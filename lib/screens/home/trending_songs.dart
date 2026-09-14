import 'package:flutter/material.dart';
import 'package:music_app/widgets/home/trending_songs.dart';

Row trendingSongsRow() {
  return Row(
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
  );
}

Text trendingSongText() {
  return Text(
    'Trending Songs',
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Color(0xffFFFFFF),
    ),
  );
}
