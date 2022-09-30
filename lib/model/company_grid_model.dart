class CompanyGridModel {
  String? image;
  String? nama;

  CompanyGridModel({
    this.image,
    this.nama,
  });
}

List<CompanyGridModel> dataCompanyGrid = [
  CompanyGridModel(
    image: 'assets/foto/gambar1.jpg',
  ),
  CompanyGridModel(
    image: 'assets/foto/gambar5.jpg',
  ),
];

List<CompanyGridModel> dataCompanyBrandGrid = [
  CompanyGridModel(
    image: 'assets/logo/anatomi.png',
  ),
  CompanyGridModel(
    image: 'assets/logo/serojaBake.png',
  ),
  CompanyGridModel(
    image: 'assets/logo/dagoVillage.png',
  ),
  CompanyGridModel(
    image: 'assets/logo/ayyuwa.png',
  ),
  CompanyGridModel(
    image: 'assets/logo/animous.png',
  ),
  CompanyGridModel(
    image: 'assets/logo/elldoda.png',
  ),
];

List<CompanyGridModel> dataProductBrandGrid = [
  CompanyGridModel(
    image: 'assets/logo/bardi.png',
    nama: 'BARDI',
  ),
  CompanyGridModel(
    image: 'assets/logo/onassis.png',
    nama: 'ONASSIS',
  ),
  CompanyGridModel(
    image: 'assets/logo/ezviz.png',
    nama: 'EZVIZ',
  ),
];
