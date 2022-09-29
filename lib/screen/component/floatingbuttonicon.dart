import 'package:flutter/material.dart';

class FloatingButtonIcon extends StatelessWidget {
  const FloatingButtonIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      margin: const EdgeInsets.only(
        bottom: 60,
        right: 10,
      ),
      child: FloatingActionButton.extended(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: Colors.green,
        label: const Icon(
          Icons.whatsapp_outlined,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
