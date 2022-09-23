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
        child: status
            ? FloatingActionButton.extended(
                onPressed: () {},
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                backgroundColor: Colors.green,
                label: Row(
                  children: [
                    if (status == true)
                      Text(
                        'Konsultasi Gratis Sekarang!',
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width < 400 ? 12 : 15,
                        ),
                      ),
                    Container(
                      margin: const EdgeInsets.only(left: 5.0),
                      child: Icon(
                        Icons.whatsapp_outlined,
                        color: Colors.white,
                        size: MediaQuery.of(context).size.width < 400 ? 18 : 25,
                      ),
                    ),
                  ],
                ),
              )
            : FloatingActionButton.extended(
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
