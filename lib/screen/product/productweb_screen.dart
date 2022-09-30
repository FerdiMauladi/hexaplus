import 'package:flutter/material.dart';

import 'package:flutter/gestures.dart';

import '../component/floatingbutton.dart';
import '../component/footer.dart';
import '../component/sliverappbar.dart';
import 'component/jelajahimerek.dart';
import 'component/kategoriproduk.dart';
import 'component/merek.dart';
import 'component/ourproduct_view.dart';
import 'component/smartanother_view.dart';
import 'component/smartcctv_view.dart';
import 'component/smartdoorlock_view.dart';
import 'component/smartlight_view.dart';
import 'component/whitespace.dart';

class ProductWebScreen extends StatelessWidget {
  const ProductWebScreen({Key? key}) : super(key: key);

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
                      const OurProductView(),
                      const KategoriProduk(),
                      const SmartcctvView(),
                      const WhiteSpace(),
                      const SmartDoorLockView(),
                      const WhiteSpace(),
                      const SmartLightView(),
                      const WhiteSpace(),
                      const SmartAnotherView(),
                      const JelajahiMerek(),
                      const Merek(),
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
