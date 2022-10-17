import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({
    Key? key,
    required this.width,
    required this.hint,
    required this.margintop,
  }) : super(key: key);

  final double width;
  final double margintop;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: margintop,
      ),
      color: Colors.white,
      width: width < 1000
          ? width < 600
              ? width < 500
                  ? width * 0.6
                  : width * 0.5
              : width * 0.4
          : width * 0.3,
      height: 50,
      child: TextFormField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
          ),
          hintText: hint,
        ),
      ),
    );
  }
}
