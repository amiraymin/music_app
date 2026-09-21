import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/models/popular_songs.dart';
import 'package:music_app/widgets/player/mini_player.dart';

class PopularSongsSection extends StatelessWidget {
  final PopSongModel popularson;
  final bool isSelected;
  final VoidCallback? onIconTap;

  const PopularSongsSection({
    super.key,
    required this.popularson,
    this.isSelected = false,
    this.onIconTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            SizedBox(height: 10.h),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return MiniPlayer(popminy: popularson);
                  },
                );
              },
              child: Row(
                children: [
                  Container(
                    height: 80.h,
                    width: 80.w,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Color.fromARGB(255, 255, 255, 255),
                      image: DecorationImage(
                        image: AssetImage(popularson.popImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          popularson.popTitel,
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        Text(
                          popularson.popDec,
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: onIconTap,
                    icon: Icon(
                      isSelected ? Icons.check_circle_outline : popularson.icon,
                      color: isSelected
                          ? Colors.blue
                          : Color.fromARGB(255, 255, 255, 255),
                      size: 30.r,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10.h),
            Container(
              height: 1.h,
              decoration: BoxDecoration(color: Color(0xff211e25)),
            ),
          ],
        ),
      ],
    );
  }
}

List<PopSongModel> pops = [
  PopSongModel(
    popDec: "sh3ban AbdelRehem",
    popImage: "assets/images/cover4.png",
    popTitel: "sha3pan ta7t el sefr",
    icon: Icons.more_horiz_outlined,
  ),
  PopSongModel(
    popDec: "Billie Eilish",
    popImage: "assets/images/cover2.png",
    popTitel: "COPYCAT",
    icon: Icons.more_horiz_outlined,
  ),
  PopSongModel(
    popDec: "Billie Eilish",
    popImage: "assets/images/cover1.webp",
    popTitel: "BIRDS OF A FEATHER",
    icon: Icons.more_horiz_outlined,
  ),
  PopSongModel(
    popDec: "Billie Eilish",
    popImage: "assets/images/cover3.webp",
    popTitel: "bad guy",
    icon: Icons.more_horiz_outlined,
  ),
  PopSongModel(
    popDec: "sh3ban AbdelRehem",
    popImage: "assets/images/cover4.png",
    popTitel: "sha3pan ta7t el sefr",
    icon: Icons.more_horiz_outlined,
  ),
  PopSongModel(
    popDec: "Billie Eilish",
    popImage: "assets/images/cover2.png",
    popTitel: "COPYCAT",
    icon: Icons.more_horiz_outlined,
  ),
  PopSongModel(
    popDec: "Billie Eilish",
    popImage: "assets/images/cover1.webp",
    popTitel: "BIRDS OF A FEATHER",
    icon: Icons.more_horiz_outlined,
  ),
  PopSongModel(
    popDec: "Billie Eilish",
    popImage: "assets/images/cover3.webp",
    popTitel: "bad guy",
    icon: Icons.more_horiz_outlined,
  ),
];
