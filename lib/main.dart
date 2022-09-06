import 'package:flutter/material.dart';
import 'package:hexaplus/screen/company/company_screen.dart';
import 'package:url_strategy/url_strategy.dart';

import 'screen/home/home_screen.dart';

void main() {
  setPathUrlStrategy();
  runApp(const HexaPlus());
}

class HexaPlus extends StatelessWidget {
  const HexaPlus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.route,
      routes: {
        HomeScreen.route: (context) => const HomeScreen(),
        CompanyScreen.route: (context) => const CompanyScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == HomeScreen.route) {
          return MaterialPageRoute(
            builder: (context) {
              return const HomeScreen();
            },
          );
        }
        if (settings.name == CompanyScreen.route) {
          return MaterialPageRoute(
            builder: (context) {
              return const CompanyScreen();
            },
          );
        }

        assert(false, 'Need to implement ${settings.name}');
        return null;
      },
      title: 'Hexa Smart',
    );
  }
}
