import 'package:flutter/material.dart';

import 'faqmobile_screen.dart';
import 'faqweb_screen.dart';

class FaqScreen extends StatelessWidget {
  static const String route = '/faqs';
  const FaqScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Title(
      title: 'Faqs',
      color: Colors.white,
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return const FaqMobileScreen();
          } else {
            return const FaqWebScreen();
          }
        },
      ),
    );
  }
}
