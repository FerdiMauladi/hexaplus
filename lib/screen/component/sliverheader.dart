import 'package:flutter/material.dart';

import '../company/company_screen.dart';
import '../home/home_screen.dart';
import '../howtobuy/howtobuy_screen.dart';
import '../product/product_screen.dart';

class SliverHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
      ),
      child: Column(
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
                margin: const EdgeInsets.only(top: 10.0),
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

  @override
  double get maxExtent => 100;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
