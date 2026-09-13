import 'package:flutter/material.dart';

class PopSongModel {
  final String popImage;
  final String popTitel;
  final String popDec;
  final IconData? icon;

  PopSongModel({
    required this.popDec,
    required this.popImage,
    required this.popTitel,
    this.icon,
  });
}
