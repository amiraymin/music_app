import 'package:flutter/material.dart';
import 'package:music_app/models/popular_songs.dart';
import 'package:music_app/widgets/home/popular_songs_section.dart';

class AddSongsScreen extends StatefulWidget {
  const AddSongsScreen({super.key});

  @override
  State<AddSongsScreen> createState() => _AddSongsScreenState();
}

class _AddSongsScreenState extends State<AddSongsScreen> {
  final Set<int> _selectedSongIndexes = <int>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        titleSpacing: 110,
        backgroundColor: Color(0xff120f16),
        title: Text(
          "Add songs",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Color.fromARGB(255, 255, 255, 255),
            size: 30,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: addPopSongList.length,
        itemBuilder: (context, index) {
          return PopularSongsSection(
            popularson: addPopSongList[index],
            isSelected: _selectedSongIndexes.contains(index),
            onIconTap: () {
              setState(() {
                if (_selectedSongIndexes.contains(index)) {
                  _selectedSongIndexes.remove(index);
                } else {
                  _selectedSongIndexes.add(index);
                }
              });
            },
          );
        },
      ),
    );
  }
}

List<PopSongModel> addPopSongList = [
  PopSongModel(
    popDec: "sh3ban AbdelRehem",
    popImage: "assets/images/cover4.png",
    popTitel: "sha3pan ta7t el sefr",
    icon: Icons.add_circle_outline,
  ),
  PopSongModel(
    popDec: "Billie Eilish",
    popImage: "assets/images/cover2.png",
    popTitel: "COPYCAT",
    icon: Icons.add_circle_outline,
  ),
  PopSongModel(
    popDec: "Billie Eilish",
    popImage: "assets/images/cover1.webp",
    popTitel: "BIRDS OF A FEATHER",
    icon: Icons.add_circle_outline,
  ),
  PopSongModel(
    popDec: "Billie Eilish",
    popImage: "assets/images/cover3.webp",
    popTitel: "bad guy",
    icon: Icons.add_circle_outline,
  ),
];
