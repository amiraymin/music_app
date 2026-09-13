import 'package:flutter/material.dart';

class PlayListCardModel {
  final String playCardName;
  final String playCardDec;
  final IconData playCardIcon;
  final String playCardImage;

  PlayListCardModel({
    required this.playCardImage,
    required this.playCardName,
    required this.playCardDec,
    required this.playCardIcon,
  });
}
