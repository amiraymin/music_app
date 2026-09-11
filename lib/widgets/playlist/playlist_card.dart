import 'package:flutter/material.dart';
import 'package:music_app/models/play_list_card.dart';

class PlaylistCard extends StatelessWidget {

  final PlayListCardModel playCard;
  
  const PlaylistCard({super.key, required this.playCard});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        SizedBox(height: 10),
        Row(
          children: [
            Container(
              height: 100,
              width: 100,
    
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 255, 255, 255),
                image: DecorationImage(
                  image: AssetImage(playCard.playCardImage),
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
                    playCard.playCardName,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  Text(
                    playCard.playCardDec,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight(320),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              playCard.playCardIcon,
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
    );
  }
}
