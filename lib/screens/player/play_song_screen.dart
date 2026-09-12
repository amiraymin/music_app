import 'package:flutter/material.dart';
import 'package:music_app/models/trending_song.dart';

class PlaySongScreen extends StatefulWidget {
  final TrendingModel trendingplayer;
  const PlaySongScreen({super.key, required this.trendingplayer});

  @override
  State<PlaySongScreen> createState() => _PlaySongScreenState();
}

class _PlaySongScreenState extends State<PlaySongScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff120f16),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              AppBar(
                backgroundColor: Color(0xff120f16),
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.white,
                    size: 45,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(20),
                child: Image.asset(
                  widget.trendingplayer.coverImage,
                  height: 350,
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
              ),
              SizedBox(height: 20),
              Text(
                widget.trendingplayer.artistName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50),
              Text(
                widget.trendingplayer.songTitle,
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              Slider(
                value: 0.4,
                onChanged: (value) {},
                activeColor: Colors.blue,
                inactiveColor: Colors.grey,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "2:04",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Text(
                    "3:10",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shuffle, color: Colors.grey, size: 24),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.skip_previous,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.skip_next, color: Colors.white, size: 32),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.repeat, color: Colors.grey, size: 24),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
