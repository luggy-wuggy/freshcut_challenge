import 'dart:ui';

import 'package:freshcut_challenge/src/common/common.dart';

class HotCardModel {
  String title;
  String imagePath;
  int newVideos;
  int watchedVideos;
  int totalVideos;
  Color primaryColor;

  HotCardModel({
    required this.title,
    required this.imagePath,
    required this.newVideos,
    required this.watchedVideos,
    required this.totalVideos,
    required this.primaryColor,
  });
}

List<HotCardModel> hotCardList = [
  HotCardModel(
    title: "Smash Stockpile",
    imagePath: "assets/images/smash.png",
    newVideos: 10,
    watchedVideos: 15,
    totalVideos: 30,
    primaryColor: FreshCutColors.kSunGold,
  ),
  HotCardModel(
    title: "FGC Rumble",
    imagePath: "assets/images/rumble.png",
    newVideos: 18,
    watchedVideos: 0,
    totalVideos: 18,
    primaryColor: FreshCutColors.kMidnightPurple,
  ),
  HotCardModel(
    title: "Smash Stockpile",
    imagePath: "assets/images/smash.png",
    newVideos: 21,
    watchedVideos: 15,
    totalVideos: 21,
    primaryColor: FreshCutColors.kMidnightRed,
  ),
];
