import 'package:flutter/material.dart';

class JelajahiMerek extends StatelessWidget {
  const JelajahiMerek({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 10,
          bottom: 10,
        ),
        margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.05,
          top: 30,
          bottom: 30,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
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
                ? 14
                : MediaQuery.of(context).size.width < 1400
                    ? 18
                    : 24,
          ),
        ),
      ),
    );
  }
}
