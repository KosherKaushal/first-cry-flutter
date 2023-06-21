import 'package:first_cry_flutter/common/ui_assistance.dart';
import 'package:first_cry_flutter/modals/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductGridItem extends StatelessWidget {
  const ProductGridItem({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: const RoundedRectangleBorder(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 330.0,
            height: 180.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(product.img),
                fit: BoxFit.fill,
              ),
            ),
          ),
          UIAssistance.verticalSpaceExtraSmall(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Text(
                  product.title,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const Spacer(),
                const Icon(
                  CupertinoIcons.heart,
                  size: 14.0,
                ),
              ],
            ),
          ),
          UIAssistance.verticalSpaceExtraSmall(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              '\u{20B9}${product.price}',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          UIAssistance.verticalSpaceExtraSmall(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Club Price:  \u{20B9}${product.clubPrice}',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontSize: 13.0),
            ),
          ),
          UIAssistance.verticalSpaceExtraSmall(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Get it by ${product.dateTime}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
