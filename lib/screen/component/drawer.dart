import 'package:flutter/material.dart';

import '../company/company_screen.dart';
import '../howtobuy/howtobuy_screen.dart';
import '../product/product_screen.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: const Text('Perusahaan Kami'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(CompanyScreen.route);
            },
          ),
          ListTile(
            title: const Text('Produk Kami'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(ProductScreen.route);
            },
          ),
          ListTile(
            title: const Text('Cara Membeli'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(HowToBuyScreen.route);
            },
          ),
        ],
      ),
    );
  }
}
