import 'package:flutter/material.dart';

import 'widget/button.dart';
import 'widget/input.dart';

class FormView extends StatelessWidget {
  const FormView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(
        top: 25,
        bottom: 25,
      ),
      decoration: const BoxDecoration(
        color: Colors.deepOrange,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Input(
            width: width,
            margintop: 0,
            hint: 'Nama',
          ),
          Input(
            width: width,
            margintop: 10,
            hint: 'Email',
          ),
          Input(
            width: width,
            margintop: 10,
            hint: 'Domisili',
          ),
          Button(width: width),
        ],
      ),
    );
  }
}
