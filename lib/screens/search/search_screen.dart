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
  final TextEditingController _searchController = TextEditingController();
  int _selectedCategoryIndex = 0;

  List<PopSongModel> get _matchingSongs {
    final searchText = _searchController.text.toLowerCase().trim();

    if (searchText.isEmpty) {
      return pops;
    }

    return pops.where((song) {
      return song.popTitel.toLowerCase().contains(searchText) ||
          song.popDec.toLowerCase().contains(searchText);
    }).toList();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final matchingSongs = _matchingSongs;

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
                controller: _searchController,
                onChanged: (_) => setState(() {}),
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

              SizedBox(
                height: 40,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: catagoriesList.length,
                  itemBuilder: (context, index) {
                    return Caragories(
                      categoris: catagoriesList[index],
                      isSelected: index == _selectedCategoryIndex,
                      onTap: () {
                        setState(() => _selectedCategoryIndex = index);
                      },
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(width: 8),
                ),
              ),
              SizedBox(height: 35),
              if (matchingSongs.isEmpty)
                const Center(
                  child: Text(
                    'No songs found',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              else
                ...matchingSongs.map(
                  (song) => PopularSongsSection(popularson: song),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
