class HomeCarouselModel {
  String? image;
  String? title;
  String? subtitle1;
  String? subtitle2;

  HomeCarouselModel({
    this.image,
    this.title,
    this.subtitle1,
    this.subtitle2,
  });
}

List<HomeCarouselModel> dataView = [
  HomeCarouselModel(
    image: 'assets/foto/gambar11.jpg',
    title: 'Security Can be Smart',
    subtitle1: 'Ingin Hidup Lebih aman, Nyaman dan Efisien?',
    subtitle2: 'Hexa+ Hadir untuk membantu mengatasi masalah tersebut.',
  ),
  HomeCarouselModel(
    image: 'assets/foto/gambar12.jpg',
    title: 'Security Can be Smart',
    subtitle1: 'Ingin Hidup Lebih aman, Nyaman dan Efisien?',
    subtitle2: 'Hexa+ Hadir untuk membantu mengatasi masalah tersebut.',
  ),
];
