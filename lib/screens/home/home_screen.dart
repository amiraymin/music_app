import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/models/popular_songs.dart';
import 'package:music_app/models/top_playlists.dart';
import 'package:music_app/screens/home/home_header.dart';
import 'package:music_app/widgets/home/favorite_artists_section.dart';
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
        padding: EdgeInsets.all(22.0.r),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Welcome(),
              SizedBox(height: 16.h),
              const SearchBox(),
              SizedBox(height: 16.h),
              Text(
                'Trending Songs',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffFFFFFF),
                ),
              ),
              SizedBox(height: 16.h),
              SizedBox(
                height: 220.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: trendList.length,
                  itemBuilder: (context, index) =>
                      TrendingSongs(trendModel: trendList[index]),
                  separatorBuilder: (context, index) => SizedBox(width: 10.w),
                ),
              ),
              SizedBox(height: 16.h),
              
              // Top Playlists Section Header
              Row(
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
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff1e71b6),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),

              SizedBox(
                height: 220.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: topPlayList.length,
                  itemBuilder: (context, i) =>
                      TopPlaylistsSection(topPlay: topPlayList[i]),
                  separatorBuilder: (context, i) => SizedBox(width: 10.w),
                ),
              ),
              SizedBox(height: 16.h),

              // Favourite Artists Section Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Favourite Artists",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffFFFFFF),
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff1e71b6),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),

              SizedBox(
                height: 200.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, ind) =>
                      FavoriteArtists(favactor: favArtist[ind]),
                  separatorBuilder: (context, i) => SizedBox(width: 10.w),
                  itemCount: favArtist.length,
                ),
              ),
              SizedBox(height: 16.h),

              // Popular Songs Section Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Songs",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffFFFFFF),
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff1e71b6),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),

              SizedBox(
                height: 200.h,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, i) =>
                      PopularSongsSection(popularson: pops[i]),
                  separatorBuilder: (context, i) => SizedBox(height: 10.h),
                  itemCount: pops.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}