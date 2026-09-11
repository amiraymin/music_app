import 'package:flutter/material.dart';

class PlayListCardModel {
  String playCardName;
  String playCardDec;
  IconData playCardIcon;
  String playCardImage;

  PlayListCardModel({
    required this.playCardImage,
    required this.playCardName,
    required this.playCardDec,
    required this.playCardIcon,
  });
}
