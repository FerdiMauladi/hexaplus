import 'package:flutter/material.dart';

import '../../howtobuy/howtobuy_screen.dart';

class BuyView extends StatelessWidget {
  const BuyView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(HowToBuyScreen.route);
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
                      'assets/foto/gambar8.jpg',
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
                      margin: const EdgeInsets.only(top: 50),
                      child: Text(
                        'How To Shop',
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
                      margin: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Temukan kemudahan berbelanja di sini',
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
