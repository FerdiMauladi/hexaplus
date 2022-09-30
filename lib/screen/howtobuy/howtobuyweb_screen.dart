import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../company/company_screen.dart';
import '../component/floatingbutton.dart';
import '../component/footer.dart';
import '../component/header.dart';
import '../component/sliverappbar.dart';
import '../component/sliverheader.dart';
import '../home/home_screen.dart';
import '../product/product_screen.dart';
import 'component/howtobuy_view.dart';
import 'howtobuy_screen.dart';

class HowToBuyWebScreen extends StatefulWidget {
  const HowToBuyWebScreen({Key? key}) : super(key: key);

  @override
  State<HowToBuyWebScreen> createState() => _HowToBuyWebScreenState();
}

class _HowToBuyWebScreenState extends State<HowToBuyWebScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              },
            ),
            child: CustomScrollView(
              shrinkWrap: true,
              slivers: [
                const SliverAppbarCustom(),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      const HowToBuyView(),
                      const Footer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const FloatingButton(),
        ],
      ),
    );
  }
}
