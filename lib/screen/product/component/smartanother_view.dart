import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SmartAnotherView extends StatefulWidget {
  const SmartAnotherView({Key? key}) : super(key: key);

  @override
  State<SmartAnotherView> createState() => _SmartAnotherViewState();
}

class _SmartAnotherViewState extends State<SmartAnotherView> {
  CarouselController carouselController = CarouselController();

  int _current = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 550,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 550,
                color: Colors.white,
              ),
              SizedBox(
                width: double.infinity,
                height: 550,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 550,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/foto/smartanother.png',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Produk Smart Home Lainnya',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.width < 600
                                  ? 45
                                  : MediaQuery.of(context).size.width < 1400
                                      ? 55
                                      : 65,
                              shadows: const <Shadow>[
                                Shadow(
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 3.0,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Text(
                              'Hunian lebih aman dan efisien dengan teknologi',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: MediaQuery.of(context).size.width <
                                        600
                                    ? 24
                                    : MediaQuery.of(context).size.width < 1400
                                        ? 28
                                        : 35,
                                shadows: const <Shadow>[
                                  Shadow(
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 3.0,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 100,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 10,
              bottom: 10,
            ),
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              top: 30,
              bottom: 30,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                left: BorderSide(
                  width: 5,
                  color: Colors.orange,
                ),
              ),
            ),
            child: Text(
              'Varian',
              style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.width < 600
                    ? 14
                    : MediaQuery.of(context).size.width < 1400
                        ? 18
                        : 24,
              ),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 700,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 700,
                color: Colors.white,
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: SizedBox(
                  width: double.infinity,
                  height: 450,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 450,
                        color: Colors.deepOrangeAccent,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            padding: const EdgeInsets.only(
                              top: 40.0,
                              right: 150.0,
                              left: 20.0,
                              bottom: 40.0,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Bardi Smart Pet Feeder',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: const Text(
                                    'Seberapa sering anda merasa cemas setiap meninggalkan rumah ? Kini anda tidak perlu khawatir lagi jika harus meninggalkan barang-barang berharga. Smart CCTV mampu memantau kondisi tempat anda 24 jam, sudah terekam otomatis, dan bisa diputar ulang kapanpun anda mau. Smart CCTV juga bisa memberikan notifikasi ketika terekam pergerakan.',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            padding: const EdgeInsets.only(
                              top: 25.0,
                              right: 20.0,
                              left: 10.0,
                              bottom: 25.0,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Image.asset(
                                  'hexa/grafikproduk.png',
                                  fit: BoxFit.contain,
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height: 280,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 25,
                left: 0,
                right: 0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 380,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.zero,
                            alignment: Alignment.topRight,
                            width: MediaQuery.of(context).size.width * 0.125,
                            height: 200,
                            child: const Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: 150,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        width: MediaQuery.of(context).size.width * 0.75,
                        height: 380,
                        child: Container(
                          padding: EdgeInsets.zero,
                          width: MediaQuery.of(context).size.width * 0.75,
                          height: 380,
                          child: CarouselSlider.builder(
                            itemCount: 3,
                            itemBuilder: (context, index, realIndex) {
                              return Container(
                                width: MediaQuery.of(context).size.width * 0.25,
                                height: 380,
                                padding: EdgeInsets.zero,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'produk/lainnya/bardiPetFeeder.png',
                                      fit: BoxFit.contain,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      height: 300,
                                    ),
                                    const Text(
                                      'Bardi Smart Pet Feeder',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            options: CarouselOptions(
                              viewportFraction: 0.35,
                              height: double.infinity,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _current = index;
                                });
                              },
                              enlargeCenterPage: true,
                              enlargeStrategy: CenterPageEnlargeStrategy.scale,
                              enableInfiniteScroll: true,
                              initialPage: _current,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.topLeft,
                        width: MediaQuery.of(context).size.width * 0.11,
                        height: 200,
                        child: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 150,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
