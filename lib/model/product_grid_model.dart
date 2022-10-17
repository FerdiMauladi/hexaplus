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
    image: 'assets/produk/cctv/indoor/bardiIndoor.png',
    nama: 'Indoor Smart CCTV',
  ),
  ProductGridModel(
    image: 'assets/produk/cctv/outdoor/onassisOutdoor.png',
    nama: 'Outdoor Smart CCTV',
  ),
];

List<ProductGridModel> listProductSmartIndoorCCTV = [
  ProductGridModel(
    image: 'assets/produk/cctv/indoor/bardiIndoor.png',
    nama: 'Bardi Indoor Smart CCTV',
    label: 'Bardi Indoor',
    detail:
        'Seberapa sering anda merasa cemas setiap meninggalkan rumah? Kini anda tidak perlu khawatir lagi jika harus meninggalkan barang-barang berharga. Smart CCTV mampu memantau kondisi tempat anda 24 jam, sudah terekam otomatis, dan bisa diputar ulang kapanpun anda mau. Smart CCTV juga bisa memberikan notifikasi ketika terekam pergerakan.',
    grafikImage: 'assets/hexa/grafikproduk.png',
  ),
  ProductGridModel(
    image: 'assets/produk/cctv/indoor/ezvizIndoor.png',
    nama: 'Ezviz Smart Indoor CCTV',
    label: 'Ezviz Indoor',
    detail:
        'Smart CCTV sangat efektif untuk menjaga keamanan di rumah anda. Smart CCTV indoor bisa digunakan untuk memantau keadaan ruangan properti anda, bisnis, ataupun orang terkasih. Smart CCTV Ezviz merupakan produk paling pintar dari Hikvision yang memiliki banyak fitur unggulan dibanding CCTV analog.',
    grafikImage: 'assets/hexa/grafikproduk.png',
  ),
  ProductGridModel(
    image: 'assets/produk/cctv/indoor/onassisIndoor.png',
    nama: 'Onassis Smart Indoor CCTV',
    label: 'Onassis Indoor',
    detail:
        'Smart CCTV Indoor memiliki manfaat untuk memastikan kompor gas anda sudah dalam keadaan mati, keran air tidak ada yang bocor, dan mencegah rumah anda dari kebakaran. Untuk di kantor, Smart CCTV tentunya berguna untuk memantau aktivitas karyawan anda dan memastikan kantor berada dilingkungan yang kondusif. Anda juga bisa memantau meeting dari mana pun anda berada hanya melalui handphone pribadi.',
    grafikImage: 'assets/hexa/grafikproduk.png',
  ),
];

List<ProductGridModel> listProductSmartOutdoorCCTV = [
  ProductGridModel(
    image: 'assets/produk/cctv/outdoor/ezvizOutdoorC3X.png',
    nama: 'Ezviz C3X Smart Outdoor CCTV',
    label: 'Ezviz C3X Outdoor',
    detail:
        'Smart CCTV outdoor sangat berguna untuk memantau kondisi parkiran, garasi, atau bahkan jalan di lokasi anda. Maling akan mundur ketika melihat rumah yang sudah memiliki sistem keamanan. Dilengkapi dengan fitur pendeteksi gerakan Smart CCTV Ezviz outdoor akan mengirimkan notifikasi langsung ke handphone anda jika terekam pergerakan. Smart CCTV outdoor juga dirancang lebih tahan cipratan air dan debu untuk menahan suhu ekstrem luar ruangan, anda tidak perlu khawatir CCTV-nya akan bermasalah.',
    grafikImage: 'assets/hexa/grafikproduk.png',
  ),
  ProductGridModel(
    image: 'assets/produk/cctv/outdoor/onassisOutdoor.png',
    nama: 'Onassis Smart Outdoor CCTV',
    label: 'Onassis Outdoor',
    detail:
        'Seberapa sering anda tidak sempat menggambil paket yang datang? Kini anda tidak harus terburu-buru bertemu kurir karena kini bisa berkomunikasi hanya melalui Smart CCTV. Melalui bantuan Smart CCTV, anda bisa menghemat budget untuk security dan memantau lokasi 24 jam dari manapun anda berada. Memiliki kelebihan lain karena Smart CCTV Onassis ini hadir dengan lampu strobo untuk menerangi lokasi sekitar dan kamera yang bisa bergerak.',
    grafikImage: 'assets/hexa/grafikproduk.png',
  ),
  ProductGridModel(
    image: 'assets/produk/cctv/outdoor/bardiOutdoor.png',
    nama: 'Bardi Outdoor Smart CCTV',
    label: 'Bardi Outdoor',
    detail:
        'Pencurian dan kejadian tidak menyenangkan sering kali terjadi diluar ruangan. Bardi outdoor bisa membantu anda memantau kondisi luar tanpa harus beranjak dari tempat anda. Bardi outdoor bisa digunakan diluar ruangan seperti di tempat parkir, garasi, atau pintu masuk. Dilengkapi dengan ketahanan menghadapi cuaca outdoor dan cipratan air.',
    grafikImage: 'assets/hexa/grafikproduk.png',
  ),
];

List<List<ProductGridModel>> listProductSmartCCTV = [
  listProductSmartIndoorCCTV,
  listProductSmartOutdoorCCTV,
];

List<ProductGridModel> listSmartDoorlock = [
  ProductGridModel(
    image: 'assets/produk/doorlock/kayu/onassisk10pro.png',
    nama: 'Pintu Kayu',
  ),
  ProductGridModel(
    image: 'assets/produk/doorlock/alumunium/onassisd65.png',
    nama: 'Pintu Alumunium',
  ),
  ProductGridModel(
    image: 'assets/produk/doorlock/kaca/arbitGlass.png',
    nama: 'Pintu Kaca',
  ),
];

List<ProductGridModel> listProductPintuKayu = [
  ProductGridModel(
    image: 'assets/produk/doorlock/kayu/onassisk10pro.png',
    nama: 'Onasis K10 Pro Smart Door Lock',
    label: 'Onasis K10 Pro Wood',
    detail:
        'Seberapa sering anda lupa menyimpan kunci rumah? Merek Bardi smart door lock membuat anda tidak harus lagi membawa kunci rumah dan bisa diakses dengan menggunakan password ataupun sidik jari. Anda pun tidak perlu khawatir rumah atau kantor anda dibobol, karena dengan teknologi yang lebih canggih kunci pintar ini memiliki tingkat keamanan yang jauh lebih tinggi dan eksklusif.',
    grafikImage: 'assets/hexa/grafikproduk.png',
  ),
  ProductGridModel(
    image: 'assets/produk/doorlock/kayu/bardiLock.png',
    nama: 'Bardi Smart Door Lock',
    label: 'Bardi Wood',
    detail:
        'Apakah anda sering kerepotan membuat janji temu dengan anggota keluarga atau karyawan untuk memberikan kunci masuk? Kini permasalahan itu bisa diatasi dengan smart door lock. Hanya melalui password anda bisa membuka pintu dengan mudah. Dirancang dengan teknologi yang canggih, smart door lock memiliki tingkat keamanan yang lebih tinggi dibanding gagang pintu konvensional.',
    grafikImage: 'assets/hexa/grafikproduk.png',
  ),
  ProductGridModel(
    image: 'assets/produk/doorlock/kayu/arbitLock.png',
    nama: 'Arbit Smart Door Lock',
    label: 'Arbit Wood',
    detail:
        'Hal yang paling menyebalkan adalah menunggu. 1 rumah yang dihuni oleh banyak orang sering kali membuat satu sama lainnya menunggu untuk mendapatkan kunci masuk. Namun kunci pintar kini hadir membantu anda memiliki kehidupan yang lebih mudah. Anda tidak harus menunggu atau menduplikat kunci agar anggota keluarga atau kerabat anda bisa masuk, sebab hanya melalui password dan fitur pembuka kunci lainnya anda bisa membuka pintu rumah dengan mudah.',
    grafikImage: 'assets/hexa/grafikproduk.png',
  ),
];

List<ProductGridModel> listProductPintuAlumunium = [
  ProductGridModel(
    image: 'assets/produk/doorlock/alumunium/onassisd65.png',
    nama: 'Onasis D65 Smart Door Lock',
    label: 'Onassis D65 Alumunium',
    detail:
        'Seberapa sering anda lupa menyimpan kunci rumah? Merek Bardi smart door lock membuat anda tidak harus lagi membawa kunci rumah dan bisa diakses dengan menggunakan password ataupun sidik jari. Anda pun tidak perlu khawatir rumah atau kantor anda dibobol, karena dengan teknologi yang lebih canggih kunci pintar ini memiliki tingkat keamanan yang jauh lebih tinggi dan eksklusif.',
    grafikImage: 'assets/hexa/grafikproduk.png',
  ),
];

List<ProductGridModel> listProductPintuKaca = [
  ProductGridModel(
    image: 'assets/produk/doorlock/kaca/arbitGlass.png',
    nama: 'Arbit Smart Door Lock',
    label: 'Arbit Glass',
    detail:
        'Seberapa sering anda lupa menyimpan kunci rumah? Merek Bardi smart door lock membuat anda tidak harus lagi membawa kunci rumah dan bisa diakses dengan menggunakan password ataupun sidik jari. Anda pun tidak perlu khawatir rumah atau kantor anda dibobol, karena dengan teknologi yang lebih canggih kunci pintar ini memiliki tingkat keamanan yang jauh lebih tinggi dan eksklusif.',
    grafikImage: 'assets/hexa/grafikproduk.png',
  ),
  ProductGridModel(
    image: 'assets/produk/doorlock/kaca/onassisD81.png',
    nama: 'Onassis Smart Door Lock',
    label: 'Onassis D81 Glass',
    detail:
        'Apakah anda sering kerepotan membuat janji temu dengan anggota keluarga atau karyawan untuk memberikan kunci masuk? Kini permasalahan itu bisa diatasi dengan smart door lock. Hanya melalui password anda bisa membuka pintu dengan mudah. Dirancang dengan teknologi yang canggih, smart door lock memiliki tingkat keamanan yang lebih tinggi dibanding gagang pintu konvensional.',
    grafikImage: 'assets/hexa/grafikproduk.png',
  ),
];

List<List<ProductGridModel>> listProductSmartDoorlock = [
  listProductPintuKayu,
  listProductPintuAlumunium,
  listProductPintuKaca,
];

List<ProductGridModel> listSmartBulb = [
  ProductGridModel(
    image: 'assets/produk/light/bulb/arbitBulb.png',
    nama: 'Smart Light Bulb',
  ),
  ProductGridModel(
    image: 'assets/produk/light/strip/arbitStrip.png',
    nama: 'Smart LED Strip',
  ),
];

List<ProductGridModel> listProductSmartBulbLight = [
  ProductGridModel(
    image: 'assets/produk/light/bulb/arbitBulb.png',
    nama: 'Arbit Smart Light Bulb',
    label: 'Arbit Smart Light Bulb',
    detail:
        'Smart Bulb menjawab kebutuhan anda untuk menjadwalkan lampu menyala dan mati otomatis. Hanya dengan menggunakan handphone, anda bisa mengaturnya sesuka hati tanpa melalui saklar. Ezviz merupakan produk dari Hikvision yang sudah teruji kualitas dan ketahanannya. Melalui smart bulb anda juga bisa menghemat biaya tagihan listrik yang bisa dialokasikan untuk kebutuhan lain.',
    grafikImage: 'assets/hexa/grafikproduk.png',
  ),
  ProductGridModel(
    image: 'assets/produk/light/bulb/bardiBulb.png',
    nama: 'Bardi Smart Light Bulb',
    label: 'Bardi Smart Light Bulb',
    detail:
        'Lampu adalah benda essensial untuk menerangi ruangan yang membuat anda bisa melakukan banyak pekerjaan. Namun seringkali kita repot dengan menyala dan mematikan lampu pada jam-jam tertentu. Kini dengan lampu pintar, anda bisa menjadwalkan kapan lampu anda nyala dan mati otomatis. Dipenuhi dengan 12 juta warna, anda bisa memilih warna sesuka hati. Kini tidak perlu lagi khawatir menyalakan lampu ketika berada diluar rumah karena bisa diatur dari manapun anda berada.',
    grafikImage: 'assets/hexa/grafikproduk.png',
  ),
  ProductGridModel(
    image: 'assets/produk/light/bulb/ezvizBulb.png',
    nama: 'Ezviz Smart Light Bulb',
    label: 'Ezviz Smart Light Bulb',
    detail:
        'Smart Bulb menjawab kebutuhan anda untuk menjadwalkan lampu menyala dan mati otomatis. Hanya dengan menggunakan handphone, anda bisa mengaturnya sesuka hati tanpa melalui saklar. Ezviz merupakan produk dari Hikvision yang sudah teruji kualitas dan ketahanannya. Melalui smart bulb anda juga bisa menghemat biaya tagihan listrik yang bisa dialokasikan untuk kebutuhan lain.',
    grafikImage: 'assets/hexa/grafikproduk.png',
  ),
  ProductGridModel(
    image: 'assets/produk/light/bulb/onassisBulb.png',
    nama: 'Onassis Smart Light Bulb',
    label: 'Onassis Smart Light Bulb',
    detail:
        'Smart bulb memiliki kecanggihan dalam memberikan estetika pada hunian anda, mengubah warna sesuai keinginan hingga 12 juta warna, dan lebih hemat biaya listrik. Semuanya bisa anda kontrol melalui smartphone. Dapatkan kemudahan dengan menggunakan lampu pintar ini.',
    grafikImage: 'assets/hexa/grafikproduk.png',
  ),
];

List<ProductGridModel> listProductSmartLEDStrip = [
  ProductGridModel(
    image: 'assets/produk/light/strip/arbitStrip.png',
    nama: 'Arbit Smart LED Strip',
    label: 'Arbit Smart LED Strip',
    detail:
        'LED Strip terbukti mampu menambah estetika pencahayaan ruangan anda. Direkomendasikan untuk di dalam ruangan, LED Strip bisa dipasang pada ruangan manapun yang anda inginkan. Tidak hanya di dinding, namun bisa dipasang di sudut-sudut plafon, backdrop televisi untuk mendapatkan efek backlight, dan pencahayaan tangga. Pengaturan pencahayaannya pun bisa diatur hanya melalui smartphone anda.',
    grafikImage: 'assets/hexa/grafikproduk.png',
  ),
  ProductGridModel(
    image: 'assets/produk/light/strip/onassisStrip.png',
    nama: 'Onassis Smart LED Strip',
    label: 'Onassis Smart LED Strip',
    detail:
        'Aesthetic menjadi kata yang populer belakangan ini. LED strip mampu membuat ruangan anda menjadi lebih aesthetic namun dengan watt yang ringan. LED strip bisa digunakan sebagai downlight di plafon, langit-langit ruangan, dan sudah didukung dengan 16 juta warna RGB.',
    grafikImage: 'assets/hexa/grafikproduk.png',
  ),
  ProductGridModel(
    image: 'assets/produk/light/strip/bardiStrip.png',
    nama: 'Bardi Smart LED Strip',
    label: 'Bardi Smart LED Strip',
    detail:
        'LED Strip terbukti mampu menambah estetika pencahayaan ruangan anda. Direkomendasikan untuk di dalam ruangan, LED Strip bisa dipasang pada ruangan manapun yang anda inginkan. Tidak hanya di dinding, namun bisa dipasang di sudut-sudut plafon, backdrop televisi untuk mendapatkan efek backlight, dan pencahayaan tangga. Pengaturan pencahayaannya pun bisa diatur hanya melalui smartphone anda.',
    grafikImage: 'assets/hexa/grafikproduk.png',
  ),
];

List<List<ProductGridModel>> listProductSmartLight = [
  listProductSmartBulbLight,
  listProductSmartLEDStrip,
];

List<ProductGridModel> listProductSmartAnother = [
  ProductGridModel(
    image: 'assets/produk/lainnya/bardiPetFeeder.png',
    nama: 'Bardi Smart Pet Feeder',
    label: 'Bardi Smart Pet Feeder',
    detail:
        'Apakah anda ingin memiliki hewan peliharaan tapi tidak punya waktu untuk memberinya makan? Smart pet feeder solusinya. Dengan kapasitas makanan 6 liter, anda tidak perlu takut melewatkan jam makan hewan kesayangan anda. Tinggal mengatur jadwal makannya, maka makanan akan tersaji pada wadah yang tersedia tepat waktu.',
    grafikImage: 'assets/hexa/grafikproduk.png',
  ),
  ProductGridModel(
    image: 'assets/produk/lainnya/bardiWallSwitch1.png',
    nama: 'Bardi Smart Wall Switch',
    label: 'Bardi Smart Wall Switch',
    detail:
        'Smart wall switch membantu anda menyala dan mematikan lampu melalui aplikasi. Dengan tampilan yang lebih minimalis, smart wall switch akan membuat hunian anda menjadi lebih pintar. Pengaturan jadwal pun bisa dilakukan darimana pun anda berada.',
    grafikImage: 'assets/hexa/grafikproduk.png',
  ),
  ProductGridModel(
    image: 'assets/produk/lainnya/bardiFishFeeder.png',
    nama: 'Bardi Smart Fish Feeder',
    label: 'Bardi Smart Fish Feeder',
    detail:
        'Jika sering melewatkan waktu memberi makan ikan anda, smart fish feeder adalah jawabannya. Anda tidak perlu lagi membuat pengingat dihandphone atau memberikan makan secara manual. Melalui smart fish feeder anda hanya perlu mengatur jam dan porsi makan yang akan diberikan.',
    grafikImage: 'assets/hexa/grafikproduk.png',
  ),
  ProductGridModel(
    image: 'assets/produk/lainnya/onassisSmartWallSwitch1.png',
    nama: 'Onassis Smart Wall Switch',
    label: 'Onassis Smart Wall Switch',
    detail:
        'Smart wall switch membantu anda menyala dan mematikan lampu melalui aplikasi. Dengan tampilan yang lebih minimalis, smart wall switch akan membuat hunian anda menjadi lebih pintar. Pengaturan jadwal pun bisa dilakukan darimana pun anda berada.',
    grafikImage: 'assets/hexa/grafikproduk.png',
  ),
];
