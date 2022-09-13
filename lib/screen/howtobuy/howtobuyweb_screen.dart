import 'package:flutter/material.dart';

import '../component/footer.dart';
import '../component/header.dart';

class HowToBuyWebScreen extends StatelessWidget {
  const HowToBuyWebScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Header(),
          Footer(),
        ],
      ),
    );
  }
}
