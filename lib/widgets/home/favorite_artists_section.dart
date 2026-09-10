import 'package:flutter/material.dart';
import 'package:music_app/models/favorite_artists.dart';

class FavoriteArtists extends StatelessWidget {
  
  final FavoriteArtModel favactor ;

  const FavoriteArtists({super.key, required this.favactor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                image: DecorationImage(
                  image: AssetImage(favactor.actorImage),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            SizedBox(height: 5),

            Text(
              favactor.actorName,
              style: TextStyle(
                color: Color.fromARGB(255, 241, 241, 241),
                fontWeight: FontWeight.w600,
              ),
            ),
         
          ],
        ),
      ],
    );
  }
}

List<FavoriteArtModel> favArtist = [
  FavoriteArtModel(actorName: "actor 1", actorImage: "assets/images/cover4.png"),
  FavoriteArtModel(actorName: "actor 2", actorImage: "assets/images/cover1.webp"),
  FavoriteArtModel(actorName: "actor 3", actorImage: "assets/images/cover2.png"),
];
