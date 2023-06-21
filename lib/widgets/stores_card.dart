import 'package:first_cry_flutter/modals/stores.dart';
import 'package:flutter/material.dart';

import '../common/ui_assistance.dart';

class StoresCard extends StatelessWidget {
  const StoresCard({
    Key? key,
    required this.stores,
  }) : super(key: key);

  final Stores stores;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: const RoundedRectangleBorder(),
      child: Column(
        children: [
          Container(
            width: 330.0,
            height: 300.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(stores.img),
                fit: BoxFit.fill,
              ),
            ),
          ),
          UIAssistance.verticalSpaceExtraSmall(),
          Text(
            stores.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          UIAssistance.verticalSpaceExtraSmall(),
          Text(
            stores.subtitle,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          UIAssistance.verticalSpaceExtraSmall(),
          Container(
              color: Colors.black,
              height: 20.0,
              width: 130.0,
              child: Center(
                child: Text(
                  stores.coupon,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.white,
                      ),
                ),
              )),
          UIAssistance.verticalSpaceExtraSmall(),
          Text(
            stores.caption,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
