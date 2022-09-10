import 'package:flutter/material.dart';

import 'productmobile_screen.dart';
import 'productweb_screen.dart';

class ProductScreen extends StatelessWidget {
  static const String route = '/produk';
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Title(
      color: Colors.white,
      title: 'Produk Kami',
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return const ProductMobileScreen();
          } else {
            return const ProductWebScreen();
          }
        },
      ),
    );
  }
}
