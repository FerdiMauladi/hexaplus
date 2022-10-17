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

List<CompanyGridModel> dataOnlineShopGrid = [
  CompanyGridModel(
    image: 'assets/logo/tokopedia.png',
    nama: 'https://www.tokopedia.com/hexaplus?source=universe&st=product',
  ),
  CompanyGridModel(
    image: 'assets/logo/bukalapak.png',
    nama:
        'https://www.bukalapak.com/u/hexaplus_842659?from=omnisearch&from_keyword_history=false&search_source=omnisearch_user&source=navbar',
  ),
  CompanyGridModel(
    image: 'assets/logo/blibli.png',
    nama: 'https://www.blibli.com/merchant/hexa/HEA-70128',
  ),
  CompanyGridModel(
    image: 'assets/logo/lazada.png',
    nama:
        'https://www.lazada.co.id/shop/hexa-plus?path=index.htm&lang=id&pageTypeId=1',
  ),
  CompanyGridModel(
    image: 'assets/logo/olx.png',
    nama: 'https://www.olx.co.id/profile/89971776',
  ),
  CompanyGridModel(
    image: 'assets/logo/shopee.png',
    nama: 'https://shopee.co.id/hexaplus',
  ),
  CompanyGridModel(
    image: 'assets/logo/jdid.png',
    nama: 'https://www.jd.id/shop/Hexa-Plus_10141741.html',
  ),
  CompanyGridModel(
    image: 'assets/logo/carousell.png',
    nama: 'https://id.carousell.com/u/hexaplus/',
  ),
];
