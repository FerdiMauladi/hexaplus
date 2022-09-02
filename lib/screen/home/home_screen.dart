import 'package:flutter/material.dart';

import 'homemobile_screen.dart';
import 'homeweb_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const HomeMobileScreen();
        } else {
          return const HomeWebScreen();
        }
      },
    );
  }
}
