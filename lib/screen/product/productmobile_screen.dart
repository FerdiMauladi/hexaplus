import 'package:flutter/material.dart';

import '../component/drawer.dart';
import '../component/floatingbutton.dart';
import '../component/footer.dart';
import '../home/home_screen.dart';
import 'component/jelajahimerek.dart';
import 'component/kategoriproduk.dart';
import 'component/merek.dart';
import 'component/ourproduct_view.dart';
import 'component/smartanother_view.dart';
import 'component/smartcctv_view.dart';
import 'component/smartdoorlock_view.dart';
import 'component/smartlight_view.dart';
import 'component/whitespace.dart';

class ProductMobileScreen extends StatelessWidget {
  const ProductMobileScreen({Key? key}) : super(key: key);
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
      body: ListView(
        children: const [
          OurProductView(),
          KategoriProduk(),
          SmartcctvView(),
          WhiteSpace(),
          SmartDoorLockView(),
          WhiteSpace(),
          SmartLightView(),
          WhiteSpace(),
          SmartAnotherView(),
          JelajahiMerek(),
          Merek(),
          Footer(),
        ],
      ),
    );
  }
}
