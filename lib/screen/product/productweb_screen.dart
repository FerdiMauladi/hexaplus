import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../component/footer.dart';
import '../component/header.dart';
import 'component/ourproduct_view.dart';

class ProductWebScreen extends StatefulWidget {
  const ProductWebScreen({Key? key}) : super(key: key);

  @override
  State<ProductWebScreen> createState() => _ProductWebScreenState();
}

class _ProductWebScreenState extends State<ProductWebScreen> {
  ScrollController scrollController = ScrollController();
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          NotificationListener(
            onNotification: (ScrollNotification notification) {
              if (notification is UserScrollNotification) {
                if (scrollController.hasClients &&
                    scrollController.offset > 0) {
                  setState(() {
                    status = true;
                  });
                }
                if (notification.metrics.atEdge &&
                    notification.metrics.pixels == 0) {
                  setState(() {
                    status = false;
                  });
                }
              }

              return false;
            },
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(
                dragDevices: {
                  PointerDeviceKind.touch,
                  PointerDeviceKind.mouse,
                },
              ),
              child: ListView(
                controller: scrollController,
                children: [
                  const OurProductView(),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.25,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 10,
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                      ),
                      margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.15,
                        top: MediaQuery.of(context).size.height * 0.1,
                        bottom: MediaQuery.of(context).size.height * 0.1,
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
                        'Kategori Produk',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.width < 600
                              ? 18
                              : MediaQuery.of(context).size.width < 1400
                                  ? 22
                                  : 28,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 1100,
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 1100,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 650,
                          child: Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 650,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/foto/gambar7.jpg',
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 50),
                                      child: Text(
                                        'Smart CCTV',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  600
                                              ? 45
                                              : MediaQuery.of(context)
                                                          .size
                                                          .width <
                                                      1400
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
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        'Aman, Pintar, dan Mudah',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  600
                                              ? 24
                                              : MediaQuery.of(context)
                                                          .size
                                                          .width <
                                                      1400
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
                          bottom: 110,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    height: 500,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fitHeight,
                                        image: AssetImage(
                                          'produk/cctv/indoor/bardiIndoor.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 10),
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
                                  Container(
                                    alignment: Alignment.center,
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    height: 650,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fitHeight,
                                        image: AssetImage(
                                          'produk/cctv/outdoor/onassisOutdoor.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 10),
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
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          height: 10,
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.05,
                            top: MediaQuery.of(context).size.height * 0.1,
                            bottom: MediaQuery.of(context).size.height * 0.1,
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
                      ),
                    ],
                  ),
                  const Footer(),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              child: Header(
                status: status,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
