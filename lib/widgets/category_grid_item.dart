import 'package:first_cry_flutter/screens/product_screen.dart';
import 'package:flutter/material.dart';

import '../modals/category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, ProductScreen.id),
      child: GridTile(
        footer: GridTileBar(
          title: Text(
            category.title,
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(category.img),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
