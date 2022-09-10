import 'package:flutter/material.dart';

import '../component/drawer.dart';
import '../component/floatingbutton.dart';
import '../component/footer.dart';
import '../home/home_screen.dart';

class ProductMobileScreen extends StatelessWidget {
  const ProductMobileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerScreen(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.grey,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(HomeScreen.route);
            },
            child: Container(
              width: 120,
              height: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(
                    'assets/foto/hexaplus.png',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: const [
          Footer(),
        ],
      ),
    );
  }
}
