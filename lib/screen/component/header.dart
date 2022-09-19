import 'package:flutter/material.dart';

import '../company/company_screen.dart';
import '../home/home_screen.dart';
import '../howtobuy/howtobuy_screen.dart';
import '../product/product_screen.dart';

class Header extends StatelessWidget {
  final bool status;
  const Header({
    required this.status,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: status ? Colors.black : Colors.transparent,
      shadowColor: Colors.grey.withOpacity(0.5),
      elevation: status ? 10 : 0,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: status ? Colors.black : Colors.transparent,
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
                  margin: const EdgeInsets.only(top: 15.0),
                  width: 120,
                  height: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                        'assets/logo/hexaplus.png',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0, bottom: 15.0),
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
                          fontSize: MediaQuery.of(context).size.width < 1400
                              ? 16
                              : 18,
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
                          fontSize: MediaQuery.of(context).size.width < 1400
                              ? 16
                              : 18,
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
                          fontSize: MediaQuery.of(context).size.width < 1400
                              ? 16
                              : 18,
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
      ),
    );
  }
}
