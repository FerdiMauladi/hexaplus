import 'package:flutter/material.dart';

import '../../../model/company_grid_model.dart';

class Merek extends StatelessWidget {
  const Merek({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(
        left: 25.0,
        right: 25.0,
      ),
      margin: const EdgeInsets.only(bottom: 15.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: width < 600
              ? width < 400
                  ? 1
                  : 2
              : 3,
          mainAxisSpacing: 15.0,
        ),
        itemCount: dataProductBrandGrid.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: width < 400
                    ? 200
                    : width > 700
                        ? width > 1000
                            ? 250
                            : 200
                        : 150,
                height: width < 400
                    ? 200
                    : width > 700
                        ? width > 1000
                            ? 250
                            : 200
                        : 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(
                      dataProductBrandGrid[index].image!,
                    ),
                  ),
                ),
              ),
              Text(
                dataProductBrandGrid[index].nama!,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
