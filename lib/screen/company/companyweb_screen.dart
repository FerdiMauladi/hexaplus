import 'package:flutter/material.dart';

import '../component/footer.dart';
import '../component/header.dart';
import '../home/component/carousel_view.dart';
import 'component/companybrandgrid_view.dart';
import 'component/companygrid_view.dart';
import 'component/companytextone_view.dart';
import 'component/companytexttwo_view.dart';
import 'component/ourclient_view.dart';

class CompanyWebScreen extends StatelessWidget {
  const CompanyWebScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Header(),
          CarouselView(),
          CompanyTextOneView(),
          CompanyGridView(),
          CompanyTextTwoView(),
          OurClientView(),
          CompanyBrandGridView(),
          Footer(),
        ],
      ),
    );
  }
}
