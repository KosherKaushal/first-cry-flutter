import 'package:first_cry_flutter/common/constants.dart';
import 'package:first_cry_flutter/widgets/product_grid_item.dart';
import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      primary: true,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 12 / 16,
      children: [
        for (final product in kProductDummyData)
          ProductGridItem(product: product),
      ],
    );
  }
}
