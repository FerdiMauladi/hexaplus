import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../component/floatingbutton.dart';
import '../component/footer.dart';
import '../component/header.dart';
import '../component/sliverappbar.dart';
import '../home/component/carousel_view.dart';
import 'component/companybrandgrid_view.dart';
import 'component/companygrid_view.dart';
import 'component/companytextone_view.dart';
import 'component/companytexttwo_view.dart';
import 'component/ourclient_view.dart';

class CompanyWebScreen extends StatefulWidget {
  const CompanyWebScreen({Key? key}) : super(key: key);

  @override
  State<CompanyWebScreen> createState() => _CompanyWebScreenState();
}

class _CompanyWebScreenState extends State<CompanyWebScreen> {
  ScrollController scrollController = ScrollController();
  bool status = false;

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
                      const CarouselView(),
                      const CompanyTextOneView(),
                      const CompanyGridView(),
                      const CompanyTextTwoView(),
                      const OurClientView(),
                      const CompanyBrandGridView(),
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
