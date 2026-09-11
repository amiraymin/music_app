import 'package:flutter/material.dart';

class PopSongModel {
  String popImage;
  String popTitel;
  String popDec;
  IconData? icon;
  

  PopSongModel({
    required this.popDec,
    required this.popImage,
    required this.popTitel,
    this.icon,
    
  });
}
