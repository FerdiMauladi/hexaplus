import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../model/company_grid_model.dart';

class OnlineShopView extends StatelessWidget {
  const OnlineShopView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
        left: width * 0.2,
        right: width * 0.2,
      ),
      margin: const EdgeInsets.only(top: 50.0, bottom: 50.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: width < 800
              ? width < 600
                  ? 2
                  : 3
              : 4,
          crossAxisSpacing: 25.0,
          mainAxisSpacing: 25.0,
        ),
        itemCount: dataOnlineShopGrid.length,
        itemBuilder: (context, index) {
          return MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () async {
                final Uri url = Uri.parse(dataOnlineShopGrid[index].nama!);
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(
                      dataOnlineShopGrid[index].image!,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
