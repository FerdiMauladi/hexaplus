import 'package:flutter/material.dart';

class KategoriProduk extends StatelessWidget {
  const KategoriProduk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Container(
        alignment: Alignment.centerLeft,
        height: 10,
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.15,
          top: MediaQuery.of(context).size.height * 0.1,
          bottom: MediaQuery.of(context).size.height * 0.1,
        ),
        decoration: const BoxDecoration(
          border: Border(
            left: BorderSide(
              width: 5,
              color: Colors.orange,
            ),
          ),
        ),
        child: Text(
          'Kategori Produk',
          style: TextStyle(
            color: Colors.black,
            fontSize: MediaQuery.of(context).size.width < 600
                ? 18
                : MediaQuery.of(context).size.width < 1400
                    ? 22
                    : 28,
          ),
        ),
      ),
    );
  }
}
