import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SmartDoorLockView extends StatefulWidget {
  const SmartDoorLockView({Key? key}) : super(key: key);

  @override
  State<SmartDoorLockView> createState() => _SmartDoorLockViewState();
}

class _SmartDoorLockViewState extends State<SmartDoorLockView> {
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
                            'assets/foto/smartdoorlock.png',
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
                            'Smart Door Lock',
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
                            'produk/doorlock/kayu/onassisk10pro.png',
                            fit: BoxFit.contain,
                            alignment: Alignment.bottomCenter,
                            width: MediaQuery.of(context).size.width * 0.33,
                            height: 500,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            child: const Text(
                              'Pintu Kayu',
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
                            'produk/doorlock/alumunium/onassisd65.png',
                            fit: BoxFit.contain,
                            alignment: Alignment.bottomCenter,
                            width: MediaQuery.of(context).size.width * 0.33,
                            height: 500,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            child: const Text(
                              'Pintu Alumunium',
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
                            'produk/doorlock/kaca/arbitGlass.png',
                            fit: BoxFit.contain,
                            alignment: Alignment.bottomCenter,
                            width: MediaQuery.of(context).size.width * 0.33,
                            height: 500,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            child: const Text(
                              'Pintu Kaca',
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
          height: MediaQuery.of(context).size.height * 0.2,
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
                  top: MediaQuery.of(context).size.height * 0.1,
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
                                  'Onassis K10 Pro',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: const Text(
                                    'Hal yang paling menyebalkan adalah menunggu. 1 rumah yang dihuni oleh banyak orang sering kali membuat satu sama lainnya menunggu untuk mendapatkan kunci masuk. Namun kunci pintar kini hadir membantu anda memiliki kehidupan yang lebih mudah. Anda tidak harus menunggu atau menduplikat kunci agar anggota keluarga atau kerabat anda bisa masuk, sebab hanya melalui password dan fitur pembuka kunci lainnya anda bisa membuka pintu rumah dengan mudah.',
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
                                      'produk/doorlock/kayu/onassisk10pro.png',
                                      fit: BoxFit.contain,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      height: 300,
                                    ),
                                    const Text(
                                      'Onassis K10 Pro',
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
