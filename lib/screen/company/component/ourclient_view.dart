import 'package:flutter/material.dart';

class OurClientView extends StatelessWidget {
  const OurClientView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
