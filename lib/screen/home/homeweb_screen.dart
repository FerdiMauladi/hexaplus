import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../component/floatingbutton.dart';
import '../component/footer.dart';

import '../component/sliverappbar.dart';
import 'component/buy_view.dart';
import 'component/carousel_view.dart';
import 'component/product_view.dart';

class HomeWebScreen extends StatelessWidget {
  const HomeWebScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              },
            ),
            child: CustomScrollView(
              shrinkWrap: true,
              slivers: [
                const SliverAppbarCustom(),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      const CarouselView(),
                      const ProductView(),
                      const BuyView(),
                      const Footer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const FloatingButton(),
        ],
      ),
    );
  }
}
