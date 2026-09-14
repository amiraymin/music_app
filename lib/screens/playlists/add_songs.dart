import 'package:flutter/material.dart';
import 'package:music_app/models/popular_songs.dart';
import 'package:music_app/widgets/home/popular_songs_section.dart';

class AddSongsScreen extends StatefulWidget {
  const AddSongsScreen({super.key});

  @override
  State<AddSongsScreen> createState() => _AddSongsScreenState();
}

class _AddSongsScreenState extends State<AddSongsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Color.fromARGB(255, 255, 255, 255),
            size: 30,
          ),
        ),
      ),
      body:  ListView.builder(
  padding: const EdgeInsets.all(15),
  itemCount: pops.length,
  itemBuilder: (context, index) {
    return PopularSongsSection(
      popularson: pops[index],
    );
  },
),
    );
  }
}
