import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/models/popular_songs.dart';
import 'package:music_app/screens/home/main_home_screen.dart';
import 'package:music_app/widgets/home/popular_songs_section.dart';

class SeeAllTopPopSongs extends StatefulWidget {
  const SeeAllTopPopSongs({super.key});

  @override
  State<SeeAllTopPopSongs> createState() => _SeeAllTopPopSongsState();
}

class _SeeAllTopPopSongsState extends State<SeeAllTopPopSongs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 75,
        surfaceTintColor: Colors.transparent,
        scrolledUnderElevation: 0,
        backgroundColor: Color(0xff120f16),

        title: Text(
          "Popular Songs",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Icon(
            Icons.arrow_back_ios_outlined,
            color: Color.fromARGB(255, 255, 255, 255),
            size: 30,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: .maxFinite,
                width: 366,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, i) =>
                      PopularSongsSection(popularson: pops[i]),
                  separatorBuilder: (context, i) => SizedBox(width: 10.w),
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
