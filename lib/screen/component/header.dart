import 'package:flutter/material.dart';

import '../company/company_screen.dart';
import '../home/home_screen.dart';
import '../product/product_screen.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.zero,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(HomeScreen.route);
            },
            child: Container(
              width: 140,
              height: 85,
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
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(CompanyScreen.route);
                    },
                    child: Text(
                      'Perusahaan Kami',
                      style: TextStyle(
                        fontSize:
                            MediaQuery.of(context).size.width < 1400 ? 16 : 18,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(ProductScreen.route);
                    },
                    child: Text(
                      'Produk Kami',
                      style: TextStyle(
                        fontSize:
                            MediaQuery.of(context).size.width < 1400 ? 16 : 18,
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Text(
                      'Cara Membeli',
                      style: TextStyle(
                        fontSize:
                            MediaQuery.of(context).size.width < 1400 ? 16 : 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
