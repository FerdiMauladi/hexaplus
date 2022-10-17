import 'package:flutter/material.dart';

import '../component/drawer.dart';
import '../component/floatingbuttonicon.dart';
import '../component/footer.dart';
import '../home/home_screen.dart';
import 'component/form_view.dart';
import 'component/howtobuy_view.dart';
import 'component/onlineshop_view.dart';

class HowToBuyMobileScreen extends StatelessWidget {
  const HowToBuyMobileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerScreen(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade800,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(HomeScreen.route);
            },
            child: Container(
              width: 120,
              height: 100,
              margin: const EdgeInsets.only(
                right: 15,
              ),
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
              HowToBuyView(),
              OnlineShopView(),
              FormView(),
              Footer(),
            ],
          ),
          const FloatingButtonIcon(),
        ],
      ),
    );
  }
}
