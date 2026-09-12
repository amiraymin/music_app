import 'package:flutter/material.dart';
import 'package:music_app/models/top_playlists.dart';
import 'package:music_app/widgets/home/popular_songs_section.dart';

class OppenPlaylistScreen extends StatefulWidget {
  final TopPlayModel top;
  const OppenPlaylistScreen({super.key, required this.top});

  @override
  State<OppenPlaylistScreen> createState() => _OppenPlaylistScreenState();
}

class _OppenPlaylistScreenState extends State<OppenPlaylistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff120f16),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 500,
              child: Stack(
                children: [
                  // background image
                  Image.asset(
                    widget.top.topImage,
                    height: 500,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),

                  // dark gradient overlay for readable text
                  // Positioned.fill makes this match the Stack's size automatically,
                  // instead of a separate fixed height that could mismatch the image
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
                              Icon(Icons.add_circle_outline, color: Colors.white),
                              SizedBox(width: 12),
                              Icon(Icons.more_vert, color: Colors.white),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  // title + subtitle near the bottom of the image
                  Positioned(
                    bottom: 90,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        Text(
                          widget.top.topName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Text(
                          widget.top.topTitle,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 60,
                          width: 155,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.play_arrow_outlined,
                              color: Colors.white,
                              size: 35,
                            ),
                            label: const Text(
                              "Play",
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff2ba2f7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          width: 155,
                          child: OutlinedButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.shuffle,
                              color: Colors.black,
                              size: 35,
                            ),
                            label: const Text(
                              "Shuffle",
                              style: TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            style: OutlinedButton.styleFrom(
                              backgroundColor: const Color(0xffbdb9b7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
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
    );
  }
}