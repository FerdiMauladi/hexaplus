import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FloatingButtonIcon extends StatelessWidget {
  const FloatingButtonIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      margin: const EdgeInsets.only(
        bottom: 40,
        right: 10,
      ),
      child: FloatingActionButton.extended(
        onPressed: () async {
          final Uri url = Uri.parse(
              'https://api.whatsapp.com/send?phone=6285171717367&text=Halo%20Mincan!%0ASaya%20ingin%20bertanya%20tentang%20produk%20dan%20jasa%20Hexa!%20');
          if (await canLaunchUrl(url)) {
            await launchUrl(url);
          } else {
            throw 'Could not launch $url';
          }
        },
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
