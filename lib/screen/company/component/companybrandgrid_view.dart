import 'package:flutter/material.dart';

import '../../../model/company_grid_model.dart';

class CompanyBrandGridView extends StatelessWidget {
  const CompanyBrandGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width < 600 ? 2 : 3,
          crossAxisSpacing: MediaQuery.of(context).size.width < 900
              ? MediaQuery.of(context).size.width < 600
                  ? 15.0
                  : 45.0
              : 85.0,
          mainAxisSpacing: 15.0,
        ),
        itemCount: dataCompanyBrandGrid.length,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  dataCompanyBrandGrid[index].image!,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
