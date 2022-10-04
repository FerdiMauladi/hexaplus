import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
      ),
      width: width < 1000
          ? width < 600
              ? width < 500
                  ? width * 0.6
                  : width * 0.5
              : width * 0.4
          : width * 0.3,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                15.0,
              ),
            ),
          ),
        ),
        onPressed: () {},
        child: const Text(
          'Submit',
        ),
      ),
    );
  }
}
