import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../model/product_grid_model.dart';

class SmartDoorLockView extends StatefulWidget {
  const SmartDoorLockView({Key? key}) : super(key: key);

  @override
  State<SmartDoorLockView> createState() => _SmartDoorLockViewState();
}

class _SmartDoorLockViewState extends State<SmartDoorLockView> {
  CarouselController carouselController = CarouselController();
  CarouselController carouselProductController = CarouselController();

  int _current = 0;
  int _currentProduct = 0;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: width < 350 ? 780 : 880,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: width < 350 ? 780 : 880,
                color: Colors.white,
              ),
              SizedBox(
                width: double.infinity,
                height: width < 350 ? 450 : 550,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: width < 350 ? 450 : 550,
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
                              fontSize: width < 600
                                  ? 45
                                  : width < 1400
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
                                fontSize: width < 600
                                    ? 24
                                    : width < 1400
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
                  width: width * 0.8,
                  height: width < 800
                      ? width < 500
                          ? 400
                          : 440
                      : 680,
                  padding: EdgeInsets.zero,
                  child: width < 800
                      ? SizedBox(
                          width: width,
                          height: width < 500 ? 400 : 440,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  carouselController.previousPage();
                                },
                                child: Container(
                                  padding: EdgeInsets.zero,
                                  alignment: Alignment.centerRight,
                                  width: width * 0.2,
                                  height: 200,
                                  child: Icon(
                                    Icons.arrow_back_ios_new_rounded,
                                    size: width * 0.15,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.zero,
                                width: width * 0.6,
                                height: width < 500 ? 400 : 440,
                                child: Container(
                                  padding: EdgeInsets.zero,
                                  width: width < 500 ? 300 : 400,
                                  height: width < 500 ? 400 : 440,
                                  child: CarouselSlider.builder(
                                    carouselController: carouselController,
                                    itemCount: listSmartDoorlock.length,
                                    itemBuilder: (context, index, realIndex) {
                                      return Container(
                                        height: width < 500 ? 400 : 440,
                                        padding: EdgeInsets.zero,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              listSmartDoorlock[index].image!,
                                              fit: BoxFit.cover,
                                              width: width < 500
                                                  ? width < 350
                                                      ? 250
                                                      : 350
                                                  : 400,
                                              height: width < 500
                                                  ? width < 350
                                                      ? 250
                                                      : 350
                                                  : 400,
                                            ),
                                            Text(
                                              listSmartDoorlock[index].nama!,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: width < 300 ? 16 : 18,
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                    options: CarouselOptions(
                                      viewportFraction: width < 350 ? 1.5 : 1,
                                      height: double.infinity,
                                      enlargeCenterPage: true,
                                      enlargeStrategy:
                                          CenterPageEnlargeStrategy.scale,
                                      enableInfiniteScroll: true,
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          _current = index;
                                          _currentProduct = 0;
                                        });
                                      },
                                      initialPage: _current,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  carouselController.nextPage();
                                },
                                child: Container(
                                  padding: EdgeInsets.zero,
                                  alignment: Alignment.centerLeft,
                                  width: width * 0.2,
                                  height: 200,
                                  child: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: width * 0.15,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _current = 0;
                                    _currentProduct = 0;
                                  });
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset(
                                      'assets/produk/doorlock/kayu/onassisk10pro.png',
                                      fit: BoxFit.contain,
                                      alignment: Alignment.bottomCenter,
                                      width: MediaQuery.of(context).size.width *
                                          0.33,
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
                              ),
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _current = 1;
                                    _currentProduct = 0;
                                  });
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset(
                                      'assets/produk/doorlock/alumunium/onassisd65.png',
                                      fit: BoxFit.contain,
                                      alignment: Alignment.bottomCenter,
                                      width: MediaQuery.of(context).size.width *
                                          0.33,
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
                              ),
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _current = 2;
                                    _currentProduct = 0;
                                  });
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset(
                                      'assets/produk/doorlock/kaca/arbitGlass.png',
                                      fit: BoxFit.contain,
                                      alignment: Alignment.bottomCenter,
                                      width: MediaQuery.of(context).size.width *
                                          0.33,
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
                              ),
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
                  left: width * 0.05,
                  top: 55,
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
                  listSmartDoorlock[_current].nama!,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: width < 600
                        ? 16
                        : width < 1400
                            ? 21
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
                  left: width * 0.05,
                  top: 15,
                ),
                child: Text(
                  'Varian',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: width < 600
                        ? 16
                        : width < 1400
                            ? 21
                            : 24,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: width,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: width < 800
                    ? width < 600
                        ? width < 500
                            ? width < 400
                                ? width < 335
                                    ? _current == 0
                                        ? width < 300
                                            ? 1265
                                            : 1215
                                        : 1150
                                    : _current == 0
                                        ? 1150
                                        : 1100
                                : _current == 0
                                    ? 1100
                                    : 1050
                            : _current == 0
                                ? 1050
                                : 1000
                        : _current == 0
                            ? 980
                            : 950
                    : _current == 0
                        ? 840
                        : 800,
                color: Colors.white,
              ),
              Positioned(
                top: 250,
                left: 0,
                right: 0,
                bottom: 0,
                child: SizedBox(
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.deepOrangeAccent,
                      ),
                      if (width < 800)
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: width < 365 ? 130.0 : 150.0,
                              ),
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    listProductSmartDoorlock[_current]
                                            [_currentProduct]
                                        .nama!,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      listProductSmartDoorlock[_current]
                                              [_currentProduct]
                                          .detail!,
                                      style: const TextStyle(
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
                              padding: const EdgeInsets.all(
                                10.0,
                              ),
                              child: Image.asset(
                                listProductSmartDoorlock[_current]
                                        [_currentProduct]
                                    .grafikImage!,
                                fit:
                                    width < 360 ? BoxFit.contain : BoxFit.cover,
                                height: 280,
                              ),
                            ),
                          ],
                        ),
                      if (width >= 800)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: width * 0.5,
                              padding: EdgeInsets.only(
                                top: 30.0,
                                right: width < 1000
                                    ? width < 900
                                        ? width < 800
                                            ? 25.0
                                            : 50.0
                                        : 80.0
                                    : 150.0,
                                left: 20.0,
                                bottom: 30.0,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    listProductSmartDoorlock[_current]
                                            [_currentProduct]
                                        .nama!,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      listProductSmartDoorlock[_current]
                                              [_currentProduct]
                                          .detail!,
                                      style: const TextStyle(
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
                              width: width * 0.5,
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
                                    listProductSmartDoorlock[_current]
                                            [_currentProduct]
                                        .grafikImage!,
                                    fit: BoxFit.cover,
                                    width: 300,
                                    height: 250,
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
                top: 0,
                left: 0,
                right: 0,
                child: SizedBox(
                  width: width,
                  height: width < 800 ? 400 : 450,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          carouselProductController.previousPage();
                        },
                        child: Container(
                          padding: EdgeInsets.zero,
                          alignment: Alignment.centerRight,
                          width: width < 800 ? width * 0.2 : width * 0.125,
                          height: 200,
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: width * 0.15,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.zero,
                        width: width < 800 ? width * 0.6 : width * 0.75,
                        height: width < 800 ? 400 : 450,
                        child: Container(
                          padding: EdgeInsets.zero,
                          width: width * 0.75,
                          height: width < 800 ? 400 : 450,
                          child: CarouselSlider.builder(
                            carouselController: carouselProductController,
                            itemCount:
                                listProductSmartDoorlock[_current].length,
                            itemBuilder: (context, index, realIndex) {
                              var listProduct =
                                  listProductSmartDoorlock[_current][index];
                              return Container(
                                height: width < 800 ? 400 : 450,
                                padding: EdgeInsets.zero,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      listProduct.image!,
                                      fit: width < 400
                                          ? BoxFit.contain
                                          : BoxFit.cover,
                                      width: width < 1000
                                          ? width < 800
                                              ? width < 500
                                                  ? width < 350
                                                      ? 250
                                                      : 300
                                                  : 350
                                              : 300
                                          : 400,
                                      height: width < 1000
                                          ? width < 800
                                              ? width < 500
                                                  ? width < 350
                                                      ? 250
                                                      : 300
                                                  : 350
                                              : 300
                                          : 400,
                                    ),
                                    Text(
                                      listProduct.label!,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            options: CarouselOptions(
                              viewportFraction: _current == 1
                                  ? 1
                                  : width < 800
                                      ? 1
                                      : 0.35,
                              height: double.infinity,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _currentProduct = index;
                                });
                              },
                              enlargeCenterPage: true,
                              enlargeStrategy: CenterPageEnlargeStrategy.scale,
                              enableInfiniteScroll: true,
                              initialPage: _currentProduct,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          carouselProductController.nextPage();
                        },
                        child: Container(
                          padding: EdgeInsets.zero,
                          alignment: Alignment.centerLeft,
                          width: width < 800 ? width * 0.2 : width * 0.125,
                          height: 200,
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: width * 0.15,
                            color: Colors.black54,
                          ),
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
