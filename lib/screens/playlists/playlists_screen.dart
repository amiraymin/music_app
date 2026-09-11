import 'package:flutter/material.dart';
import 'package:music_app/models/play_list_card.dart';
import 'package:music_app/widgets/playlist/add_playlist_bottom.dart';
import 'package:music_app/widgets/playlist/playlist_card.dart';

class PlaylistsScreen extends StatefulWidget {
  const PlaylistsScreen({super.key});

  @override
  State<PlaylistsScreen> createState() => _PlaylistsScreenState();
}

class _PlaylistsScreenState extends State<PlaylistsScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Scaffold(
        
        appBar: AppBar(
     
          scrolledUnderElevation: 0,
          titleSpacing: 110,
          backgroundColor: Color(0xff120f16),
          title: Text(
            "Playlists",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Icon(
            Icons.arrow_back_ios_outlined,
            color: Color.fromARGB(255, 255, 255, 255),
            size: 30,
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddPlaylistBottom();
              },
            );
          },
          backgroundColor: const Color(0xff2196F3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(Icons.add, color: Colors.white),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: cardlist.length,
                  itemBuilder: (context, index) =>
                      PlaylistCard(playCard: cardlist[index]),
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<PlayListCardModel> cardlist = [
  PlayListCardModel(
    playCardImage: "assets/images/cover3.webp",
    playCardName: "playCardName",
    playCardDec: "playCardDec",
    playCardIcon: Icons.more_horiz_outlined,
  ),
  PlayListCardModel(
    playCardImage: "assets/images/cover3.webp",
    playCardName: "playCardName",
    playCardDec: "playCardDec",
    playCardIcon: Icons.more_horiz_outlined,
  ),
  PlayListCardModel(
    playCardImage: "assets/images/cover3.webp",
    playCardName: "playCardName",
    playCardDec: "playCardDec",
    playCardIcon: Icons.more_horiz_outlined,
  ),
  PlayListCardModel(
    playCardImage: "assets/images/cover3.webp",
    playCardName: "playCardName",
    playCardDec: "playCardDec",
    playCardIcon: Icons.more_horiz_outlined,
  ),
  PlayListCardModel(
    playCardImage: "assets/images/cover3.webp",
    playCardName: "playCardName",
    playCardDec: "playCardDec",
    playCardIcon: Icons.more_horiz_outlined,
  ),
  PlayListCardModel(
    playCardImage: "assets/images/cover3.webp",
    playCardName: "playCardName",
    playCardDec: "playCardDec",
    playCardIcon: Icons.more_horiz_outlined,
  ),
  PlayListCardModel(
    playCardImage: "assets/images/cover3.webp",
    playCardName: "playCardName",
    playCardDec: "playCardDec",
    playCardIcon: Icons.more_horiz_outlined,
  ),
  PlayListCardModel(
    playCardImage: "assets/images/cover3.webp",
    playCardName: "playCardName",
    playCardDec: "playCardDec",
    playCardIcon: Icons.more_horiz_outlined,
  ),
  PlayListCardModel(
    playCardImage: "assets/images/cover3.webp",
    playCardName: "playCardName",
    playCardDec: "playCardDec",
    playCardIcon: Icons.more_horiz_outlined,
  ),
  PlayListCardModel(
    playCardImage: "assets/images/cover3.webp",
    playCardName: "playCardName",
    playCardDec: "playCardDec",
    playCardIcon: Icons.more_horiz_outlined,
  ),
  PlayListCardModel(
    playCardImage: "assets/images/cover3.webp",
    playCardName: "playCardName",
    playCardDec: "playCardDec",
    playCardIcon: Icons.more_horiz_outlined,
  ),
  PlayListCardModel(
    playCardImage: "assets/images/cover3.webp",
    playCardName: "playCardName",
    playCardDec: "playCardDec",
    playCardIcon: Icons.more_horiz_outlined,
  ),
  PlayListCardModel(
    playCardImage: "assets/images/cover3.webp",
    playCardName: "playCardName",
    playCardDec: "playCardDec",
    playCardIcon: Icons.more_horiz_outlined,
  ),
];
