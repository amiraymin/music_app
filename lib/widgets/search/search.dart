import 'package:flutter/material.dart';
import 'package:music_app/models/catagories.dart';

class Caragories extends StatelessWidget {
  final CategoriesModel categoris;
  const Caragories({super.key, required this.categoris});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 100,

          decoration: BoxDecoration(
            color: Color(0xff1e71b6),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              categoris.catiName,
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight(350),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

List<CategoriesModel> catagoriesList = [
  CategoriesModel(catiName: "All"),
  CategoriesModel(catiName: "test 1"),
  CategoriesModel(catiName: "All 2"),
  CategoriesModel(catiName: "All 3"),
  CategoriesModel(catiName: "All 4"),
];
