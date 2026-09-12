import 'package:flutter/material.dart';
import 'package:music_app/models/popular_songs.dart';
import 'package:music_app/screens/home/home_screen.dart';
import 'package:music_app/widgets/home/popular_songs_section.dart';

class SeeAllFavoriteArtists extends StatefulWidget {
  const SeeAllFavoriteArtists({super.key});

  @override
  State<SeeAllFavoriteArtists> createState() => _SeeAllFavoriteArtistsState();
}

class _SeeAllFavoriteArtistsState extends State<SeeAllFavoriteArtists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 75,
        surfaceTintColor: Colors.transparent,
        scrolledUnderElevation: 0,
        backgroundColor: Color(0xff120f16),

        title: Text(
          "Favorite Artists",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 20,
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
              PopularSongsSection(
                popularson: PopSongModel(
                  popDec: "",
                  popImage: "assets/images/cover4.png",
                  popTitel: "PopName",
                  icon: Icons.arrow_forward_ios_rounded,
                ),
              ),
              PopularSongsSection(
                popularson: PopSongModel(
                  popDec: "",
                  popImage: "assets/images/cover4.png",
                  popTitel: "PopName",
                  icon: Icons.arrow_forward_ios_rounded,
                ),
              ),
              PopularSongsSection(
                popularson: PopSongModel(
                  popDec: "",
                  popImage: "assets/images/cover4.png",
                  popTitel: "PopName",
                  icon: Icons.arrow_forward_ios_rounded,
                ),
              ),
              PopularSongsSection(
                popularson: PopSongModel(
                  popDec: "",
                  popImage: "assets/images/cover4.png",
                  popTitel: "PopName",
                  icon: Icons.arrow_forward_ios_rounded,
                ),
              ),
              PopularSongsSection(
                popularson: PopSongModel(
                  popDec: "",
                  popImage: "assets/images/cover4.png",
                  popTitel: "PopName",
                  icon: Icons.arrow_forward_ios_rounded,
                ),
              ),
              PopularSongsSection(
                popularson: PopSongModel(
                  popDec: "",
                  popImage: "assets/images/cover4.png",
                  popTitel: "PopName",
                  icon: Icons.arrow_forward_ios_rounded,
                ),
              ),
              PopularSongsSection(
                popularson: PopSongModel(
                  popDec: "",
                  popImage: "assets/images/cover4.png",
                  popTitel: "PopName",
                  icon: Icons.arrow_forward_ios_rounded,
                ),
              ),
              PopularSongsSection(
                popularson: PopSongModel(
                  popDec: "",
                  popImage: "assets/images/cover4.png",
                  popTitel: "PopName",
                  icon: Icons.arrow_forward_ios_rounded,
                ),
              ),
              PopularSongsSection(
                popularson: PopSongModel(
                  popDec: "",
                  popImage: "assets/images/cover4.png",
                  popTitel: "PopName",
                  icon: Icons.arrow_forward_ios_rounded,
                ),
              ),
              PopularSongsSection(
                popularson: PopSongModel(
                  popDec: "",
                  popImage: "assets/images/cover4.png",
                  popTitel: "PopName",
                  icon: Icons.arrow_forward_ios_rounded,
                ),
              ),
              PopularSongsSection(
                popularson: PopSongModel(
                  popDec: "",
                  popImage: "assets/images/cover4.png",
                  popTitel: "PopName",
                  icon: Icons.arrow_forward_ios_rounded,
                ),
              ),
              PopularSongsSection(
                popularson: PopSongModel(
                  popDec: "",
                  popImage: "assets/images/cover4.png",
                  popTitel: "PopName",
                  icon: Icons.arrow_forward_ios_rounded,
                ),
              ),
              PopularSongsSection(
                popularson: PopSongModel(
                  popDec: "",
                  popImage: "assets/images/cover4.png",
                  popTitel: "PopName",
                  icon: Icons.arrow_forward_ios_rounded,
                ),
              ),
              PopularSongsSection(
                popularson: PopSongModel(
                  popDec: "",
                  popImage: "assets/images/cover4.png",
                  popTitel: "PopName",
                  icon: Icons.arrow_forward_ios_rounded,
                ),
              ),
              PopularSongsSection(
                popularson: PopSongModel(
                  popDec: "",
                  popImage: "assets/images/cover4.png",
                  popTitel: "PopName",
                  icon: Icons.arrow_forward_ios_rounded,
                ),
              ),
              PopularSongsSection(
                popularson: PopSongModel(
                  popDec: "",
                  popImage: "assets/images/cover4.png",
                  popTitel: "PopName",
                  icon: Icons.arrow_forward_ios_rounded,
                ),
              ),
              PopularSongsSection(
                popularson: PopSongModel(
                  popDec: "",
                  popImage: "assets/images/cover4.png",
                  popTitel: "PopName",
                  icon: Icons.arrow_forward_ios_rounded,
                ),
              ),
              PopularSongsSection(
                popularson: PopSongModel(
                  popDec: "",
                  popImage: "assets/images/cover4.png",
                  popTitel: "PopName",
                  icon: Icons.arrow_forward_ios_rounded,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
