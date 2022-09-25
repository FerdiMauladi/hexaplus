import 'package:flutter/material.dart';

import '../component/drawer.dart';

import '../component/floatingbuttonicon.dart';
import '../component/footer.dart';
import 'component/buy_view.dart';
import 'component/carousel_view.dart';
import 'component/product_view.dart';
import 'home_screen.dart';

class HomeMobileScreen extends StatelessWidget {
  const HomeMobileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerScreen(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.grey,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(HomeScreen.route);
            },
            child: Container(
              width: 120,
              height: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(
                    'assets/hexa/logoHexa_tulisa.png',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            children: const [
              CarouselView(),
              ProductView(),
              BuyView(),
              Footer(),
            ],
          ),
          const FloatingButtonIcon(),
        ],
      ),
    );
  }
}
