import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../component/floatingbutton.dart';
import '../component/footer.dart';
import '../component/header.dart';
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
          NotificationListener(
            onNotification: (ScrollNotification notification) {
              if (notification is UserScrollNotification) {
                if (scrollController.hasClients &&
                    scrollController.offset > 0) {
                  setState(() {
                    status = true;
                  });
                }
                if (notification.metrics.atEdge &&
                    notification.metrics.pixels == 0) {
                  setState(() {
                    status = false;
                  });
                }
              }
              return false;
            },
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(
                dragDevices: {
                  PointerDeviceKind.touch,
                  PointerDeviceKind.mouse,
                },
              ),
              child: ListView(
                controller: scrollController,
                scrollDirection: Axis.vertical,
                children: const [
                  CarouselView(),
                  CompanyTextOneView(),
                  CompanyGridView(),
                  CompanyTextTwoView(),
                  OurClientView(),
                  CompanyBrandGridView(),
                  Footer(),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Header(
              status: status,
            ),
          ),
          const FloatingButton(),
        ],
      ),
    );
  }
}
