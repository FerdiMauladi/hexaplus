import 'package:flutter/material.dart';

import 'companymobile_screen.dart';
import 'companyweb_screen.dart';

class CompanyScreen extends StatelessWidget {
  const CompanyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const CompanyMobileScreen();
        } else {
          return const CompanyWebScreen();
        }
      },
    );
  }
}
