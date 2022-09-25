import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SmartcctvView extends StatefulWidget {
  const SmartcctvView({Key? key}) : super(key: key);

  @override
  State<SmartcctvView> createState() => _SmartcctvViewState();
}

class _SmartcctvViewState extends State<SmartcctvView> {
  CarouselController carouselController = CarouselController();

  int _current = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 880,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 880,
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
                            'assets/foto/smartcctv.png',
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
                            'Smart CCTV',
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
                              'Aman, Pintar, dan Mudah',
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
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 680,
                  padding: EdgeInsets.zero,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            'produk/cctv/indoor/bardiIndoor.png',
                            fit: BoxFit.contain,
                            alignment: Alignment.bottomCenter,
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: 500,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            child: const Text(
                              'Indoor Smart CCTV',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            'produk/cctv/outdoor/onassisOutdoor.png',
                            fit: BoxFit.cover,
                            alignment: Alignment.bottomCenter,
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: 620,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            child: const Text(
                              'Outdoor Smart CCTV',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 150,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  top: 75,
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      width: 5,
                      color: Colors.orange,
                    ),
                  ),
                ),
                child: Text(
                  'Smart CCTV Indoor',
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
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(
                  left: 55,
                ),
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  top: 15,
                ),
                child: Text(
                  'Varian',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: MediaQuery.of(context).size.width < 600
                        ? 14
                        : MediaQuery.of(context).size.width < 1400
                            ? 18
                            : 24,
                  ),
                ),
              ),
            ],
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
                            padding: EdgeInsets.only(
                              top: 40.0,
                              right: MediaQuery.of(context).size.width < 1000
                                  ? MediaQuery.of(context).size.width < 900
                                      ? MediaQuery.of(context).size.width < 800
                                          ? 25.0
                                          : 50.0
                                      : 80.0
                                  : 150.0,
                              left: 20.0,
                              bottom: 40.0,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'BARDI Indoor Smart CCTV',
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
                                    textAlign: TextAlign.start,
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
                    children: [
                      Container(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.centerLeft,
                        width: MediaQuery.of(context).size.width * 0.125,
                        height: 200,
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: MediaQuery.of(context).size.width * 0.15,
                          color: Colors.black54,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'produk/cctv/indoor/bardiIndoor.png',
                                      fit: BoxFit.contain,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      height: 300,
                                    ),
                                    const Text(
                                      'Bardi',
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
                        alignment: Alignment.centerRight,
                        width: MediaQuery.of(context).size.width * 0.125,
                        height: 200,
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: MediaQuery.of(context).size.width * 0.15,
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
