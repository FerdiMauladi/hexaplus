import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../faq/faq_screen.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.width >= 500 ? 200 : 350,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
      ),
      child: Container(
        margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.035,
          right: MediaQuery.of(context).size.width * 0.035,
        ),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (MediaQuery.of(context).size.width >= 500)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                              'assets/logo/smartwithus.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(FaqScreen.route);
                              },
                              child: const Text(
                                'FAQ',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            '  |  ',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () async {
                                final Uri url = Uri.parse(
                                    'https://api.whatsapp.com/send?phone=6285171717367&text=Halo%20Mincan!%0ASaya%20ingin%20bertanya%20tentang%20produk%20dan%20jasa%20Hexa!%20');
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: const Text(
                                'Kontak Kami',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 15.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () async {
                                  final Uri url = Uri.parse(
                                      'https://www.instagram.com/hexaplus.bdg/');
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                child: const Icon(
                                  FontAwesomeIcons.instagram,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () async {
                                  final Uri url = Uri.parse(
                                      'https://www.tiktok.com/@hexaplus.bdg');
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                child: const Icon(
                                  FontAwesomeIcons.tiktok,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () async {
                                  final Uri url = Uri.parse(
                                      'https://www.facebook.com/hexaplusofficial/');
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                child: const Icon(
                                  FontAwesomeIcons.facebook,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            if (MediaQuery.of(context).size.width < 500)
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          'assets/logo/smartwithus.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(FaqScreen.route);
                          },
                          child: const Text(
                            'FAQ',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10.0),
                          child: GestureDetector(
                            onTap: () async {
                              final Uri url = Uri.parse(
                                  'https://api.whatsapp.com/send?phone=6285171717367&text=Halo%20Mincan!%0ASaya%20ingin%20bertanya%20tentang%20produk%20dan%20jasa%20Hexa!%20');
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: const Text(
                              'Kontak Kami',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10.0),
                          child: Divider(
                            color: Colors.white,
                            thickness: 3,
                            endIndent: MediaQuery.of(context).size.width * 0.75,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () async {
                            final Uri url = Uri.parse(
                                'https://www.instagram.com/hexaplus.bdg/');
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          icon: const Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            final Uri url = Uri.parse(
                                'https://www.tiktok.com/@hexaplus.bdg');
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          icon: const Icon(
                            FontAwesomeIcons.tiktok,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            final Uri url = Uri.parse(
                                'https://www.facebook.com/hexaplusofficial/');
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          icon: const Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            Container(
              height: 50,
              width: double.infinity,
              padding: const EdgeInsets.all(
                15,
              ),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 2,
                    color: Colors.white,
                  ),
                ),
              ),
              child: const Text(
                'Hexa © 2022',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
