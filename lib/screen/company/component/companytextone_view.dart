import 'package:flutter/material.dart';

class CompanyTextOneView extends StatelessWidget {
  const CompanyTextOneView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
