import 'package:flutter/material.dart';
import 'package:music_app/models/catagories.dart';

class Caragories extends StatelessWidget {
  final CategoriesModel categoris;
  final bool isSelected;
  final VoidCallback onTap;

  const Caragories({
    super.key,
    required this.categoris,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 100,

        decoration: BoxDecoration(
          color: isSelected ? const Color(0xff2ba2f7) : const Color(0xff302d34),
          borderRadius: BorderRadius.circular(10),
          
        ),
        child: Center(
          child: Text(
            categoris.catiName,
            style: TextStyle(
              fontSize: 15,
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
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
