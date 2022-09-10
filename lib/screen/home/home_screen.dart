import 'dart:io';

import 'package:flutter/material.dart';

import 'homemobile_screen.dart';
import 'homeweb_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String route = '/';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Title(
      color: Colors.white,
      title: 'Hexa Smart',
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return const HomeMobileScreen();
          } else if (constraints.maxWidth < 600 &&
              (Platform.isAndroid || Platform.isIOS)) {
            return const HomeWebScreen();
          } else {
            return const HomeWebScreen();
          }
        },
      ),
    );
  }
}
