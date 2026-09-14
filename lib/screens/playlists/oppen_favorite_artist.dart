import 'package:flutter/material.dart';
import 'package:music_app/models/favorite_artists_seeall.dart';
import 'package:music_app/widgets/home/popular_songs_section.dart';

class OppenFavoriteArtistScreen extends StatefulWidget {
  final FavoriteArtistsSeeallModell favSeeAllScreen;
  const OppenFavoriteArtistScreen({super.key, required this.favSeeAllScreen});

  @override
  State<OppenFavoriteArtistScreen> createState() =>
      _OppenFavoriteArtistScreenState();
}

class _OppenFavoriteArtistScreenState extends State<OppenFavoriteArtistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff120f16),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /* /////////////////////////image ////////////////////////////// */
              SizedBox(
                height: 500,
                child: Stack(
                  children: [
                    Image.asset(
                      widget.favSeeAllScreen.image,
                      height: 500,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.8),
                            ],
                          ),
                        ),
                      ),
                    ),

                    /* /////////////////////////top icons back + addplaylist + more bottoms ////////////////////////////// */
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 12),
                                Icon(Icons.more_vert, color: Colors.white),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    /* /////////////////////////Play + suffle bottoms ////////////////////////////// */
                    Positioned(
                      left: 320,
                      bottom: 24,
                      child: SizedBox(
                        height: 70,
                        width: 70,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: const Color(0xff2ba2f7),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: const Icon(
                            Icons.play_arrow_outlined,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      height: 50,
                      width: 300,
                      right: 100,
                      bottom: 24,
                      child: Text(
                        widget.favSeeAllScreen.actorName,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 30,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: pops.length,
                      itemBuilder: (context, i) =>
                          PopularSongsSection(popularson: pops[i]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
