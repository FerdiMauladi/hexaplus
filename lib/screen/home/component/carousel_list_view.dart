import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CarouselListView extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle1;
  final String subtitle2;
  const CarouselListView({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                image,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Text(
                  title,
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
                margin: const EdgeInsets.only(bottom: 5),
                child: Text(
                  subtitle1,
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
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: Text(
                  subtitle2,
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
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
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
                    final Uri url = Uri.parse(
                        'https://api.whatsapp.com/send?phone=6285171717367&text=Halo%20Mincan!%0ASaya%20ingin%20bertanya%20tentang%20produk%20dan%20jasa%20Hexa!%20');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Text(
                      'Konsultasi Gratis Sekarang!',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
