import 'package:flutter/material.dart';

class PageOneScreen extends StatelessWidget {
  const PageOneScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: const Text(
                  'Security Can Be Smart',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 55,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                child: const Text(
                  'Ingin Hidup Lebih aman, Nyaman dan Efisien?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: const Text(
                  'Hexa+ Hadir untuk membantu mengatasi masalah tersebut.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        color: Colors.grey,
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
                    primary: Colors.deepOrange,
                    onSurface: Colors.orange,
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {},
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
