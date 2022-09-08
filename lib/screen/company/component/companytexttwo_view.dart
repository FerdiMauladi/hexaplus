import 'package:flutter/material.dart';

class CompanyTextTwoView extends StatelessWidget {
  const CompanyTextTwoView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          Text(
            'Hexa+ adalah jasa yang melayani berbagai bidang instalasi smart home. Hadir untuk memberikan keunggulan penuh bagi anda yang ingin memiliki rumah pintar hanya dalam satu genggaman tangan. Berbagai hunian dan industri telah mempercayakan kami untuk membantu mereka memiliki kehidupan yang lebih aman dan efisien. Kami membantu memberikan solusi tentang permasalahan anda sehari-hari melalui teknologi.',
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
