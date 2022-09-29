class ProductGridModel {
  String? image;
  String? nama;
  String? label;
  String? detail;
  String? grafikImage;

  ProductGridModel({
    this.image,
    this.nama,
    this.label,
    this.detail,
    this.grafikImage,
  });
}

List<ProductGridModel> listSmartCCTV = [
  ProductGridModel(
    image: 'produk/cctv/indoor/bardiIndoor.png',
    nama: 'Indoor Smart CCTV',
  ),
  ProductGridModel(
    image: 'produk/cctv/outdoor/onassisOutdoor.png',
    nama: 'Outdoor Smart CCTV',
  ),
];

List<ProductGridModel> listProductSmartIndoorCCTV = [
  ProductGridModel(
    image: 'produk/cctv/indoor/bardiIndoor.png',
    nama: 'Bardi Indoor Smart CCTV',
    label: 'Bardi Indoor',
    detail:
        'Seberapa sering anda merasa cemas setiap meninggalkan rumah? Kini anda tidak perlu khawatir lagi jika harus meninggalkan barang-barang berharga. Smart CCTV mampu memantau kondisi tempat anda 24 jam, sudah terekam otomatis, dan bisa diputar ulang kapanpun anda mau. Smart CCTV juga bisa memberikan notifikasi ketika terekam pergerakan. ',
    grafikImage: 'hexa/grafikproduk.png',
  ),
  ProductGridModel(
    image: 'produk/cctv/indoor/ezvizIndoor.png',
    nama: 'Ezviz Smart Indoor CCTV',
    label: 'Ezviz Indoor',
    detail:
        'Smart CCTV sangat efektif untuk menjaga keamanan di rumah anda. Smart CCTV indoor bisa digunakan untuk memantau keadaan ruangan properti anda, bisnis, ataupun orang terkasih. Smart CCTV Ezviz merupakan produk paling pintar dari Hikvision yang memiliki banyak fitur unggulan dibanding CCTV analog.',
    grafikImage: 'hexa/grafikproduk.png',
  ),
  ProductGridModel(
    image: 'produk/cctv/indoor/onassisIndoor.png',
    nama: 'Onassis Smart Indoor CCTV',
    label: 'Onassis Indoor',
    detail:
        'Smart CCTV Indoor memiliki manfaat untuk memastikan kompor gas anda sudah dalam keadaan mati, keran air tidak ada yang bocor, dan mencegah rumah anda dari kebakaran. Untuk di kantor, Smart CCTV tentunya berguna untuk memantau aktivitas karyawan anda dan memastikan kantor berada dilingkungan yang kondusif. Anda juga bisa memantau meeting dari mana pun anda berada hanya melalui handphone pribadi.',
    grafikImage: 'hexa/grafikproduk.png',
  ),
];

List<ProductGridModel> listProductSmartOutdoorCCTV = [
  ProductGridModel(
    image: 'produk/cctv/outdoor/ezvizOutdoorC3X.png',
    nama: 'Ezviz C3X Smart Outdoor CCTV',
    label: 'Ezviz C3X Outdoor',
    detail:
        'Smart CCTV outdoor sangat berguna untuk memantau kondisi parkiran, garasi, atau bahkan jalan di lokasi anda. Maling akan mundur ketika melihat rumah yang sudah memiliki sistem keamanan. Dilengkapi dengan fitur pendeteksi gerakan Smart CCTV Ezviz outdoor akan mengirimkan notifikasi langsung ke handphone anda jika terekam pergerakan. Smart CCTV outdoor juga dirancang lebih tahan cipratan air dan debu untuk menahan suhu ekstrem luar ruangan, anda tidak perlu khawatir CCTV-nya akan bermasalah.',
    grafikImage: 'hexa/grafikproduk.png',
  ),
  ProductGridModel(
    image: 'produk/cctv/outdoor/onassisOutdoor.png',
    nama: 'Onassis Smart Outdoor CCTV',
    label: 'Onassis Outdoor',
    detail:
        'Seberapa sering anda tidak sempat menggambil paket yang datang? Kini anda tidak harus terburu-buru bertemu kurir karena kini bisa berkomunikasi hanya melalui Smart CCTV. Melalui bantuan Smart CCTV, anda bisa menghemat budget untuk security dan memantau lokasi 24 jam dari manapun anda berada. Memiliki kelebihan lain karena Smart CCTV Onassis ini hadir dengan lampu strobo untuk menerangi lokasi sekitar dan kamera yang bisa bergerak.',
    grafikImage: 'hexa/grafikproduk.png',
  ),
  ProductGridModel(
    image: 'produk/cctv/outdoor/bardiOutdoor.png',
    nama: 'Bardi Outdoor Smart CCTV',
    label: 'Bardi Outdoor',
    detail:
        'Pencurian dan kejadian tidak menyenangkan sering kali terjadi diluar ruangan. Bardi outdoor bisa membantu anda memantau kondisi luar tanpa harus beranjak dari tempat anda. Bardi outdoor bisa digunakan diluar ruangan seperti di tempat parkir, garasi, atau pintu masuk. Dilengkapi dengan ketahanan menghadapi cuaca outdoor dan cipratan air.',
    grafikImage: 'hexa/grafikproduk.png',
  ),
];

List<List<ProductGridModel>> listProductSmartCCTV = [
  listProductSmartIndoorCCTV,
  listProductSmartOutdoorCCTV,
];
