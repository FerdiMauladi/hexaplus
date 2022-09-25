import 'package:flutter/material.dart';

import '../component/drawer.dart';
import '../component/footer.dart';
import '../home/component/carousel_view.dart';
import '../home/home_screen.dart';
import 'component/companybrandgrid_view.dart';
import 'component/companygrid_view.dart';
import 'component/companytextone_view.dart';
import 'component/companytexttwo_view.dart';
import 'component/ourclient_view.dart';

class CompanyMobileScreen extends StatelessWidget {
  const CompanyMobileScreen({Key? key}) : super(key: key);

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
      body: ListView(
        scrollDirection: Axis.vertical,
        children: const [
          CarouselView(),
          CompanyTextOneView(),
          CompanyGridView(),
          CompanyTextTwoView(),
          OurClientView(),
          CompanyBrandGridView(),
          Footer(),
        ],
      ),
    );
  }
}
