import 'package:flutter/material.dart';

import 'package:flutter/gestures.dart';

import '../../model/company_grid_model.dart';
import '../component/floatingbutton.dart';
import '../component/footer.dart';
import '../component/header.dart';
import 'component/kategoriproduk.dart';
import 'component/ourproduct_view.dart';
import 'component/smartanother_view.dart';
import 'component/smartcctv_view.dart';
import 'component/smartdoorlock_view.dart';
import 'component/smartlight_view.dart';
import 'component/whitespace.dart';

class ProductWebScreen extends StatefulWidget {
  const ProductWebScreen({Key? key}) : super(key: key);

  @override
  State<ProductWebScreen> createState() => _ProductWebScreenState();
}

class _ProductWebScreenState extends State<ProductWebScreen> {
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
                children: [
                  OurProductView(),
                  KategoriProduk(),
                  SmartcctvView(),
                  WhiteSpace(),
                  SmartDoorLockView(),
                  WhiteSpace(),
                  SmartLightView(),
                  WhiteSpace(),
                  SmartAnotherView(),
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 35,
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                      ),
                      margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.15,
                        top: 80,
                        bottom: 80,
                      ),
                      decoration: const BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            width: 5,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                      child: Text(
                        'Jelajahi Merek',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.width < 600
                              ? 18
                              : MediaQuery.of(context).size.width < 1400
                                  ? 22
                                  : 28,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 50.0,
                      right: 50.0,
                      top: 25.0,
                      bottom: 25.0,
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:
                            MediaQuery.of(context).size.width < 600 ? 2 : 4,
                        crossAxisSpacing:
                            MediaQuery.of(context).size.width < 900
                                ? MediaQuery.of(context).size.width < 600
                                    ? 15.0
                                    : 45.0
                                : 85.0,
                        mainAxisSpacing: 15.0,
                      ),
                      itemCount: dataCompanyBrandGrid.length,
                      itemBuilder: (context, index) {
                        return Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                dataCompanyBrandGrid[index].image!,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
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
