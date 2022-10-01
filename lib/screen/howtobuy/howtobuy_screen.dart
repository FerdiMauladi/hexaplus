import 'dart:io';

import 'package:flutter/material.dart';

import 'howtobuymobile_screen.dart';
import 'howtobuyweb_screen.dart';

class HowToBuyScreen extends StatelessWidget {
  static const String route = '/caramembeli';
  const HowToBuyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Title(
      color: Colors.white,
      title: 'Cara Membeli',
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600 && constraints.maxHeight < 950) {
            return const HowToBuyMobileScreen();
          } else if (constraints.maxWidth < 600 &&
              constraints.maxHeight > 950) {
            return const HowToBuyWebScreen();
          } else {
            return const HowToBuyWebScreen();
          }
        },
      ),
    );
  }
}
