import 'package:flutter/material.dart';
import 'package:music_app/models/popular_songs.dart';
import 'package:music_app/widgets/home/popular_songs_section.dart';
import 'package:music_app/widgets/search/search.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              TextFormField(
                onTapOutside: (event) {
                  FocusScope.of(context).unfocus();
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff19161d),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Color(0xffa9a4ad), fontSize: 20),
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    color: Color.fromARGB(255, 250, 250, 250),
                    size: 25,
                  ),
                  prefixIconConstraints: BoxConstraints(minWidth: 70),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff2ba2f7), width: 2),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),

              SizedBox(height: 40),
              Text(
                "Top Result",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      width: 100,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            Caragories(categoris: catagoriesList[index]),
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 5),
                        itemCount: catagoriesList.length,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 35),
              PopularSongsSection(
                popularson: PopSongModel(
                  popDec: "popDec",
                  popImage: "assets/images/cover4.png",
                  popTitel: "popTitel",
                icon: Icons.more_horiz_outlined,
                ),
              ),
              PopularSongsSection(
                popularson: PopSongModel(
                  popDec: "popDec",
                  popImage: "assets/images/cover2.png",
                  popTitel: "popTitel",
                   icon: Icons.more_horiz_outlined,
                ),
              ),
              PopularSongsSection(
                popularson: PopSongModel(
                  popDec: "popDec",
                  popImage: "assets/images/cover1.webp",
                  popTitel: "popTitel",
                    icon: Icons.more_horiz_outlined,
                ),
              ),
              PopularSongsSection(
                popularson: PopSongModel(
                  popDec: "popDec",
                  popImage: "assets/images/cover3.webp",
                  popTitel: "popTitel",
                  icon: Icons.more_horiz_outlined,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
