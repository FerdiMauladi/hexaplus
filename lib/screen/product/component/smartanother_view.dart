import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../model/product_grid_model.dart';

class SmartAnotherView extends StatefulWidget {
  const SmartAnotherView({Key? key}) : super(key: key);

  @override
  State<SmartAnotherView> createState() => _SmartAnotherViewState();
}

class _SmartAnotherViewState extends State<SmartAnotherView> {
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
          height: 580,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 580,
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
                          alignment: Alignment.bottomRight,
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
                                    ? 1150
                                    : 1100
                                : 1050
                            : 1000
                        : 950
                    : 770,
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
                                    listProductSmartAnother[_current].nama!,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      listProductSmartAnother[_current].detail!,
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
                                listProductSmartAnother[_current].grafikImage!,
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
                                    listProductSmartAnother[_current].nama!,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      listProductSmartAnother[_current].detail!,
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
                                    listProductSmartAnother[_current]
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
                          carouselController.previousPage();
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
                            carouselController: carouselController,
                            itemCount: listProductSmartAnother.length,
                            itemBuilder: (context, index, realIndex) {
                              var listProduct = listProductSmartAnother[index];
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
                              viewportFraction: width < 800 ? 1 : 0.35,
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
                      GestureDetector(
                        onTap: () {
                          carouselController.nextPage();
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
