import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../component/floatingbutton.dart';
import '../component/footer.dart';
import '../component/header.dart';
import 'component/buy_view.dart';
import 'component/carousel_view.dart';
import 'component/product_view.dart';

class HomeWebScreen extends StatefulWidget {
  const HomeWebScreen({Key? key}) : super(key: key);

  @override
  State<HomeWebScreen> createState() => _HomeWebScreenState();
}

class _HomeWebScreenState extends State<HomeWebScreen> {
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
                scrollDirection: Axis.vertical,
                children: const [
                  CarouselView(),
                  ProductView(),
                  BuyView(),
                  Footer(),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Header(
              status: status,
            ),
          ),
          const FloatingButton(),
        ],
      ),
    );
  }
}
