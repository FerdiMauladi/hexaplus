import 'package:flutter/material.dart';

class FloatingButton extends StatefulWidget {
  const FloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      margin: const EdgeInsets.only(
        bottom: 60,
        right: 10,
      ),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        opaque: false,
        onHover: (s) {
          setState(() {
            status = true;
          });
        },
        onExit: (s) {
          setState(() {
            status = false;
          });
        },
        child: FloatingActionButton.extended(
          onPressed: () {},
          shape: const CircleBorder(),
          backgroundColor: Colors.green,
          label: Icon(
            Icons.whatsapp_outlined,
            color: Colors.white,
            size: MediaQuery.of(context).size.width < 400 ? 18 : 32,
          ),
        ),
      ),
    );
  }
}
