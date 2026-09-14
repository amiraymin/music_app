import 'package:flutter/material.dart';
import 'package:music_app/models/popular_songs.dart';

class MiniPlayer extends StatefulWidget {
  final PopSongModel popminy;
  const MiniPlayer({super.key, required this.popminy});

  @override
  State<MiniPlayer> createState() => _MiniPlayerState();
}

class _MiniPlayerState extends State<MiniPlayer> {
  bool isPlaying = false;
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(27),
          gradient: LinearGradient(
            colors: [Color(0xff2ba2f7), Color(0xff1976d2)],
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                SizedBox(width: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    widget.popminy.popImage,
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 13),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.popminy.popTitel,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        widget.popminy.popDec,
                        style: TextStyle(color: Colors.white70, fontSize: 15),
                      ),
                    ],
                  ),
                ),

                IconButton(
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                  icon:Icon(isFavorite ? Icons.favorite : Icons.favorite_border ) ,
                  color: isFavorite ? Colors.red : Colors.grey,
                ),

               
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: IconButton(
                      icon: Icon(
                        isPlaying ? Icons.pause : Icons.play_arrow_outlined,
                        color: Color(0xff1976d2),
                      ),
                      onPressed: () {
                        setState(() {
                          isPlaying = !isPlaying;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),

            // simple progress line
          ],
        ),
      ),
    );
  }
}
