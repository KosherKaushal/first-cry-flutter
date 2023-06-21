import 'package:first_cry_flutter/common/constants.dart';
import 'package:flutter/material.dart';

import 'category_grid_item.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      primary: true,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 3 / 1.8,
      children: [
        for (final category in kCategoryDummyData)
          CategoryGridItem(category: category),
      ],
    );
  }
}
