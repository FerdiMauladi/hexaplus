import 'package:flutter/material.dart';
import 'package:hexa_smart/screen/faq/faq_view_model.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';

import 'screen/company/company_screen.dart';
import 'screen/faq/faq_screen.dart';
import 'screen/home/home_screen.dart';
import 'screen/howtobuy/howtobuy_screen.dart';
import 'screen/product/product_screen.dart';

void main() {
  setPathUrlStrategy();
  runApp(const HexaPlus());
}

class HexaPlus extends StatelessWidget {
  const HexaPlus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FaqViewModel(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Yorkten',
          scaffoldBackgroundColor: Colors.white,
          visualDensity: VisualDensity.compact,
        ),
        initialRoute: HomeScreen.route,
        routes: {
          HomeScreen.route: (context) => const HomeScreen(),
          CompanyScreen.route: (context) => const CompanyScreen(),
          ProductScreen.route: (context) => const ProductScreen(),
          HowToBuyScreen.route: (context) => const HowToBuyScreen(),
          FaqScreen.route: (context) => const FaqScreen(),
        },
        onGenerateRoute: (settings) {
          if (settings.name == HomeScreen.route) {
            return MaterialPageRoute(
              builder: (context) {
                return const HomeScreen();
              },
            );
          } else if (settings.name == CompanyScreen.route) {
            return MaterialPageRoute(
              builder: (context) {
                return const CompanyScreen();
              },
            );
          } else if (settings.name == ProductScreen.route) {
            return MaterialPageRoute(
              builder: (context) {
                return const ProductScreen();
              },
            );
          } else if (settings.name == HowToBuyScreen.route) {
            return MaterialPageRoute(
              builder: (context) {
                return const HowToBuyScreen();
              },
            );
          } else if (settings.name == FaqScreen.route) {
            return MaterialPageRoute(
              builder: (context) {
                return const FaqScreen();
              },
            );
          }

          assert(false, 'Need to implement ${settings.name}');
          return null;
        },
        title: 'Hexa Smart',
      ),
    );
  }
}
