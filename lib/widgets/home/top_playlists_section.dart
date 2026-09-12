import 'package:flutter/material.dart';
import 'package:music_app/models/top_playlists.dart';
import 'package:music_app/screens/playlists/oppen_playlist_screen.dart';

class TopPlaylistsSection extends StatelessWidget {
  final TopPlayModel topPlay;

  const TopPlaylistsSection({
    super.key,
    required this.topPlay
     });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OppenPlaylistScreen(top: topPlay),
                  ),
                );
              },
              child: Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  image: DecorationImage(
                    image: AssetImage(topPlay.topImage),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(height: 5,),
                        

            Text(
              topPlay.topName,
              style: TextStyle(
                color: Color.fromARGB(255, 241, 241, 241),
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              topPlay.topTitle,
              style: TextStyle(color: Color.fromARGB(255, 241, 241, 241)),
            ),
          ],
        ),
      ],
    );
  }
}
