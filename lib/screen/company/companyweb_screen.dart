import 'package:flutter/material.dart';

import '../../model/company_grid_model.dart';
import '../component/footer.dart';
import '../component/header.dart';
import '../home/component/carousel_view.dart';

class CompanyWebScreen extends StatelessWidget {
  const CompanyWebScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Header(),
          const CarouselView(),
          Container(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Text(
                  'Perangkat pintar secara mutlak mempengaruhi cara pikir dan hidup penggunanya.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.width < 600
                        ? 18
                        : MediaQuery.of(context).size.width < 1400
                            ? 22
                            : 25,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Maka saatnya anda beralih sebelum tertinggal.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.width < 600
                        ? 18
                        : MediaQuery.of(context).size.width < 1400
                            ? 22
                            : 25,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Smart Home membantu anda memiliki tempat yang lebih aman dan efisien.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.width < 600
                        ? 18
                        : MediaQuery.of(context).size.width < 1400
                            ? 22
                            : 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15.0,
              ),
              itemCount: dataCompanyGrid.length,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        dataCompanyGrid[index].image!,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Text(
                  'Hexa+ adalah jasa yang melayani berbagai bidang instalasi smart home. Hadir untuk memberikan keunggulan penuh bagi anda yang ingin memiliki rumah pintar hanya dalam satu genggaman tangan. Berbagai hunian dan industri telah mempercayakan kami untuk membantu mereka memiliki kehidupan yang lebih aman dan efisien. Kami membantu memberikan solusi tentang permasalahan anda sehari-hari melalui teknologi.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.width < 600
                        ? 18
                        : MediaQuery.of(context).size.width < 1400
                            ? 22
                            : 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(25.0),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.55,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.55,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/foto/gambar2.jpg',
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Our Client',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width < 600
                          ? 35
                          : MediaQuery.of(context).size.width < 1400
                              ? 45
                              : 55,
                      shadows: const <Shadow>[
                        Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 3.0,
                          color: Colors.black,
                        ),
                      ],
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
