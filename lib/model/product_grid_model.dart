class ProductGridModel {
  String? image;
  String? nama;

  ProductGridModel({
    this.image,
    this.nama,
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
