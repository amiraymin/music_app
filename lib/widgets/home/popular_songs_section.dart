import 'package:flutter/material.dart';
import 'package:music_app/models/popular_songs.dart';

class PopularSongsSection extends StatelessWidget {
  final PopSongModel popularson;

  const PopularSongsSection({super.key, required this.popularson});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  height: 80,
                  width: 80,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 255, 255, 255),
                    image: DecorationImage(
                      image: AssetImage(popularson.popImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        popularson.popTitel,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      Text(
                        popularson.popDec,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  popularson.icon,
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 30,
                ),
              ],
            ),

            SizedBox(height: 10),
            Container(
              height: 1,
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
    popDec: "popDec",
    popImage: "assets/images/cover4.png",
    popTitel: "popTitel",
      icon: Icons.more_horiz_outlined,
  ),
  PopSongModel(
    popDec: "popDec",
    popImage: "assets/images/cover2.png",
    popTitel: "popTitel",
     icon: Icons.more_horiz_outlined,
  ),
  PopSongModel(
    popDec: "popDec",
    popImage: "assets/images/cover1.webp",
    popTitel: "popTitel",
      icon: Icons.more_horiz_outlined,
  ),
  PopSongModel(
    popDec: "popDec",
    popImage: "assets/images/cover3.webp",
    popTitel: "popTitel",
      icon: Icons.more_horiz_outlined,
  ),  PopSongModel(
    popDec: "popDec",
    popImage: "assets/images/cover3.webp",
    popTitel: "popTitel",
      icon: Icons.more_horiz_outlined,
  ),
    PopSongModel(
    popDec: "popDec",
    popImage: "assets/images/cover3.webp",
    popTitel: "popTitel",
      icon: Icons.more_horiz_outlined,
  ),
    PopSongModel(
    popDec: "popDec",
    popImage: "assets/images/cover3.webp",
    popTitel: "popTitel",
      icon: Icons.more_horiz_outlined,
  ),
    PopSongModel(
    popDec: "popDec",
    popImage: "assets/images/cover3.webp",
    popTitel: "popTitel",
      icon: Icons.more_horiz_outlined,
  ),
    PopSongModel(
    popDec: "popDec",
    popImage: "assets/images/cover3.webp",
    popTitel: "popTitel",
      icon: Icons.more_horiz_outlined,
  ),
    PopSongModel(
    popDec: "popDec",
    popImage: "assets/images/cover3.webp",
    popTitel: "popTitel",
      icon: Icons.more_horiz_outlined,
  ),
    PopSongModel(
    popDec: "popDec",
    popImage: "assets/images/cover3.webp",
    popTitel: "popTitel",
      icon: Icons.more_horiz_outlined,
  ),
    PopSongModel(
    popDec: "popDec",
    popImage: "assets/images/cover3.webp",
    popTitel: "popTitel",
      icon: Icons.more_horiz_outlined,
  ),
    PopSongModel(
    popDec: "popDec",
    popImage: "assets/images/cover3.webp",
    popTitel: "popTitel",
      icon: Icons.more_horiz_outlined,
  ),
    PopSongModel(
    popDec: "popDec",
    popImage: "assets/images/cover3.webp",
    popTitel: "popTitel",
      icon: Icons.more_horiz_outlined,
  ),
    PopSongModel(
    popDec: "popDec",
    popImage: "assets/images/cover3.webp",
    popTitel: "popTitel",
      icon: Icons.more_horiz_outlined,
  ),
    PopSongModel(
    popDec: "popDec",
    popImage: "assets/images/cover3.webp",
    popTitel: "popTitel",
      icon: Icons.more_horiz_outlined,
  ),
    PopSongModel(
    popDec: "popDec",
    popImage: "assets/images/cover3.webp",
    popTitel: "popTitel",
      icon: Icons.more_horiz_outlined,
  ),
    PopSongModel(
    popDec: "popDec",
    popImage: "assets/images/cover3.webp",
    popTitel: "popTitel",
      icon: Icons.more_horiz_outlined,
  ),
  
];
