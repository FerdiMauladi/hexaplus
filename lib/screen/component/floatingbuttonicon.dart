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
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        backgroundColor: Colors.green,
        label: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 5.0),
              child: Icon(
                Icons.whatsapp_outlined,
                color: Colors.white,
                size: MediaQuery.of(context).size.width < 400 ? 22 : 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
