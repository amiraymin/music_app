import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/models/category.dart';

class Caragories extends StatefulWidget {
  final CategoriesModel categoris;
  final bool isSelected;

  const Caragories({super.key, required this.categoris, required this.isSelected});

  @override
  State<Caragories> createState() => _CaragoriesState();
}

class _CaragoriesState extends State<Caragories> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      child: Container(
        height: 40,
        width: 100,

        decoration: BoxDecoration(
          color: widget.isSelected ? Color(0xff2ba2f7) : Color(0xff302d34),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            widget.categoris.catiName,
            style: TextStyle(
              fontSize: 15.sp,
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
  CategoriesModel(catiName: "Artist"),
  CategoriesModel(catiName: "Album"),
  CategoriesModel(catiName: "Playlist"),

];
