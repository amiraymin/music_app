import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/models/favorite_artists_seeall.dart';
import 'package:music_app/screens/playlists/oppen_favorite_artist.dart';

class FavoriteArtistSeeAll extends StatefulWidget {
  final FavoriteArtistsSeeallModell favSeeAll;

  const FavoriteArtistSeeAll({super.key, required this.favSeeAll});

  @override
  State<FavoriteArtistSeeAll> createState() => _FavoriteArtistSeeAllState();
}

class _FavoriteArtistSeeAllState extends State<FavoriteArtistSeeAll> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.h),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OppenFavoriteArtistScreen(
                  favSeeAllScreen: widget.favSeeAll,
                ),
              ),
            );
          },
          child: Row(
            children: [
              Container(
                height: 80.h,
                width: 80.w,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Color.fromARGB(255, 255, 255, 255),
                  image: DecorationImage(
                    image: AssetImage(widget.favSeeAll.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.favSeeAll.actorName,
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
              Icon(
                widget.favSeeAll.actorIcon,
                color: Color.fromARGB(255, 255, 255, 255),
                size: 30.r,
              ),
            ],
          ),
        ),

        SizedBox(height: 10.h),
        Container(
          height: 1.h,
          decoration: BoxDecoration(color: Color(0xff211e25)),
        ),
      ],
    );
  }
}

List<FavoriteArtistsSeeallModell> favoArtSeeAll = [
  FavoriteArtistsSeeallModell(
    image: "assets/images/artist1.jpg",
    actorName: "Billie Eilish",
    actorIcon: Icons.arrow_forward_ios_sharp,
  ),
  FavoriteArtistsSeeallModell(
    image: "assets/images/artist2.jpg",
    actorName: "sh3ban AbdelRehem",
    actorIcon: Icons.arrow_forward_ios_sharp,
  ),
  FavoriteArtistsSeeallModell(
    image: "assets/images/artist3.jpg",
    actorName: "Wegz",
    actorIcon: Icons.arrow_forward_ios_sharp,
  ),
  FavoriteArtistsSeeallModell(
    image: "assets/images/artist4.jpg",
    actorName: "Eminem",
    actorIcon: Icons.arrow_forward_ios_sharp,
  ),
  FavoriteArtistsSeeallModell(
    image: "assets/images/artist1.jpg",
    actorName: "Billie Eilish",
    actorIcon: Icons.arrow_forward_ios_sharp,
  ),
  FavoriteArtistsSeeallModell(
    image: "assets/images/artist2.jpg",
    actorName: "sh3ban AbdelRehem",
    actorIcon: Icons.arrow_forward_ios_sharp,
  ),
  FavoriteArtistsSeeallModell(
    image: "assets/images/artist3.jpg",
    actorName: "Wegz",
    actorIcon: Icons.arrow_forward_ios_sharp,
  ),
  FavoriteArtistsSeeallModell(
    image: "assets/images/artist4.jpg",
    actorName: "Eminem",
    actorIcon: Icons.arrow_forward_ios_sharp,
  ),
  FavoriteArtistsSeeallModell(
    image: "assets/images/artist1.jpg",
    actorName: "Billie Eilish",
    actorIcon: Icons.arrow_forward_ios_sharp,
  ),
  FavoriteArtistsSeeallModell(
    image: "assets/images/artist2.jpg",
    actorName: "sh3ban AbdelRehem",
    actorIcon: Icons.arrow_forward_ios_sharp,
  ),
  FavoriteArtistsSeeallModell(
    image: "assets/images/artist3.jpg",
    actorName: "Wegz",
    actorIcon: Icons.arrow_forward_ios_sharp,
  ),
  FavoriteArtistsSeeallModell(
    image: "assets/images/artist4.jpg",
    actorName: "Eminem",
    actorIcon: Icons.arrow_forward_ios_sharp,
  ),
];
