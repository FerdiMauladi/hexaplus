import 'package:flutter/material.dart';

import '../component/floatingbutton.dart';
import '../component/footer.dart';
import '../component/header.dart';
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
          ListView(
            children: const [
              Header(),
              CarouselView(),
              ProductView(),
              BuyView(),
              Footer(),
            ],
          ),
          const FloatingButton(),
        ],
      ),
    );
  }
}
