class TopPlayModel {
  String topTitle;
  String topName;
  String topImage;

  TopPlayModel({
    required this.topTitle,
    required this.topName,
    required this.topImage,
  });
}

final List<TopPlayModel> topPlayList = [
  TopPlayModel(
    topTitle: 'topTitle 1',
    topName: 'topName 1',
    topImage: 'assets/images/cover3.webp',
  ),
  TopPlayModel(
    topTitle: 'topTitle 2',
    topName: 'topName 2',
    topImage: 'assets/images/cover4.png',
  ),
  TopPlayModel(
    topTitle: 'topTitle 3',
    topName: 'topName 3',
    topImage: 'assets/images/cover1.webp',
  ),
];
