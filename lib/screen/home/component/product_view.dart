import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../product/product_screen.dart';

class ProductView extends StatelessWidget {
  const ProductView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(ProductScreen.route);
        },
        child: SizedBox(
          width: double.infinity,
          height: height * 0.85,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: height * 0.85,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/foto/gambar13.jpg',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 80),
                      child: Text(
                        'Our Product',
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
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Produk unggulan yang telah teruji',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width < 600
                              ? 14
                              : MediaQuery.of(context).size.width < 1400
                                  ? 18
                                  : 25,
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
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Text(
                        'memiliki pengalaman yang baik dari para pengguna',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width < 600
                              ? 14
                              : MediaQuery.of(context).size.width < 1400
                                  ? 18
                                  : 25,
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
                    Container(
                      margin: const EdgeInsets.only(
                        top: 30,
                        bottom: 50,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                            disabledForegroundColor:
                                Colors.deepOrange.withOpacity(0.38),
                            disabledBackgroundColor:
                                Colors.deepOrange.withOpacity(0.12),
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            shape: const StadiumBorder()),
                        onPressed: () async {
                          final Uri url =
                              Uri.parse('https://store.hexa-smart.com/');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(13.0),
                          child: Text(
                            'Shop Now!',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
