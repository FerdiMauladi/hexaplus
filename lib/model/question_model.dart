class QuestionModel {
  String? question;
  String? answer;
  bool isExpand;

  QuestionModel({
    this.question,
    this.answer,
    required this.isExpand,
  });
}

List<QuestionModel> listPertanyaan = [
  QuestionModel(
    question: 'Apakah untuk jasa pemasangan bisa diluar Bandung?',
    answer:
        'Saat ini Hexa+ hanya melayani jasa pemasangan di wilayah Bandung dan sekitarnya.',
    isExpand: false,
  ),
  QuestionModel(
    question: 'Apakah ada garansinya? Garansinya berapa lama min?',
    answer:
        'Untuk garansi pemasangan yaitu 30 hari terhitung setelah pemasangan dan untuk garansi resmi unit sampai 12 bulan.',
    isExpand: false,
  ),
  QuestionModel(
    question: 'Berapa biaya pemasangan smart CCTV di Hexa+?',
    answer:
        'Biaya pemasangannya 200.000 sudah dengan pengenalan fitur dan cara pemakaian.',
    isExpand: false,
  ),
  QuestionModel(
    question: 'Apa saja perangkat yang bisa digunakan untuk memantau CCTV?',
    answer:
        'Perangkatnya bisa menggunakan smartphone, laptop, ataupun personal computer (PC)',
    isExpand: false,
  ),
  QuestionModel(
    question:
        'Apakah pemasangan Smart Door Lock bisa di semua jenis pintu apapun?',
    answer:
        'Iya, Smart Door Lock kita bisa dipasang hampir semua jenis pintu. Seperti di jenis kayu, alumunium, besi, dan kaca. Nanti akan disesuaikan dengan tipe smart door lock yang akan dipasang.',
    isExpand: false,
  ),
  QuestionModel(
    question: 'Berapa harga pemasangan Smart Door Locknya?',
    answer:
        'Untuk pemasangan Smart Door Lock dipintu baru yang sudah dilubangi adalah 400.000. Tapi untuk yang belum dilubangi 500.000 karena tingkat kesulitannya yang lebih tinggi.',
    isExpand: false,
  ),
  QuestionModel(
    question: 'Apakah CCTV di Hexa+ bisa merekam menggunakan NVR?',
    answer:
        'Beberapa produk CCTV yang ada di Hexa+ bisa merekam menggunakan NVR.',
    isExpand: false,
  ),
  QuestionModel(
    question:
        'Apakah CCTV yang tidak menggunakan micro SD tetap bisa menyimpan video dan bisa diputar ulang?',
    answer:
        'Tidak bisa, karena fungsi micro SD adalah untuk menyimpan video agar dapat diputar ulang.',
    isExpand: false,
  ),
  QuestionModel(
    question: 'Produk mana yang paling direkomendasikan?',
    answer:
        'Untuk produk sesuai kebutuhan. Konsultasi dengan admin yuk agar mendapatkan produk yang sesuai dengan kebutuhan teman-teman.',
    isExpand: false,
  ),
];
