import 'package:flutter/material.dart';

import '../company/company_screen.dart';
import '../home/home_screen.dart';
import '../howtobuy/howtobuy_screen.dart';
import '../product/product_screen.dart';

class SliverAppbarCustom extends StatelessWidget {
  const SliverAppbarCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.grey.shade800,
      elevation: 8,
      shadowColor: Colors.grey,
      automaticallyImplyLeading: false,
      snap: true,
      floating: true,
      toolbarHeight: 110,
      centerTitle: true,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(HomeScreen.route);
              },
              child: Container(
                width: 100,
                height: 40,
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
          ),
          Container(
            margin: const EdgeInsets.only(top: 13.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(CompanyScreen.route);
                    },
                    child: Text(
                      'Perusahaan Kami',
                      style: TextStyle(
                        fontSize:
                            MediaQuery.of(context).size.width < 1400 ? 16 : 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(ProductScreen.route);
                    },
                    child: Text(
                      'Produk Kami',
                      style: TextStyle(
                        fontSize:
                            MediaQuery.of(context).size.width < 1400 ? 16 : 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(HowToBuyScreen.route);
                    },
                    child: Text(
                      'Cara Membeli',
                      style: TextStyle(
                        fontSize:
                            MediaQuery.of(context).size.width < 1400 ? 16 : 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
