import 'package:flutter/material.dart';

import 'screen/home/home_screen.dart';

void main() {
  runApp(const HexaPlus());
}

class HexaPlus extends StatelessWidget {
  const HexaPlus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HexaPlus',
      home: HomeScreen(),
    );
  }
}
