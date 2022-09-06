import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../component/drawer.dart';
import '../component/footer.dart';
import '../home/component/pageone_view.dart';
import '../home/component/pagetwo_view.dart';

class CompanyMobileScreen extends StatefulWidget {
  const CompanyMobileScreen({Key? key}) : super(key: key);

  @override
  State<CompanyMobileScreen> createState() => _CompanyMobileScreenState();
}

class _CompanyMobileScreenState extends State<CompanyMobileScreen> {
  final _controller = PageController();

  int _currentPage = 0;

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
          Container(
            width: 120,
            height: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(
                  'assets/images/hexaplus.png',
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.85,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.85,
                  child: PageView(
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (int index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    children: const [
                      PageOneScreen(),
                      PageTwoScreen(),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  margin: const EdgeInsets.only(
                    bottom: 25,
                  ),
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: 2,
                    onDotClicked: (index) => _controller.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeIn,
                    ),
                    effect: const SwapEffect(
                      activeDotColor: Colors.grey,
                      dotColor: Colors.white,
                      dotHeight: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}