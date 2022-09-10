import 'package:flutter/material.dart';

import '../component/footer.dart';
import '../component/header.dart';
import 'component/ourproduct_view.dart';

class ProductWebScreen extends StatelessWidget {
  const ProductWebScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Header(),
          OurProductView(),
          Footer(),
        ],
      ),
    );
  }
}
