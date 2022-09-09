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
          crossAxisCount: MediaQuery.of(context).size.width < 400 ? 2 : 3,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15.0,
        ),
        itemCount: dataCompanyBrandGrid.length,
        itemBuilder: (context, index) {
          return Container(
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
