import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/models/favorite_artists_home.dart';
import 'package:music_app/models/favorite_artists_seeall.dart';
import 'package:music_app/screens/playlists/oppen_favorite_artist.dart';

class FavoriteArtists extends StatelessWidget {
  final FavoriteArtModel favactor;

  const FavoriteArtists({super.key, required this.favactor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
     
        SizedBox(
          width: 130.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OppenFavoriteArtistScreen(
                        favSeeAllScreen: FavoriteArtistsSeeallModell(
                          image: favactor.actorImage,
                          actorName: favactor.actorName,
                          actorIcon: Icons.arrow_forward_ios_sharp,
                        ),
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 130.h,
                  width: 130.w,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    image: DecorationImage(
                      image: AssetImage(favactor.actorImage),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
              ),
              SizedBox(height: 5.h),
          
              Text(
                favactor.actorName,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
           
            ],
          ),
        ),
     ],
    );
  }
}

List<FavoriteArtModel> favArtist = [
  FavoriteArtModel(actorName: "Billie Eilish", actorImage: "assets/images/artist1.jpg"),
  FavoriteArtModel(actorName: "sh3ban AbdelRehem", actorImage: "assets/images/artist2.jpg"),
  FavoriteArtModel(actorName: "Wegz", actorImage: "assets/images/artist3.jpg"),
  FavoriteArtModel(actorName: "Eminem", actorImage: "assets/images/artist4.jpg"),
];
