import 'package:first_cry_flutter/common/constants.dart';
import 'package:first_cry_flutter/widgets/stores_card.dart';
import 'package:flutter/material.dart';

class StoresList extends StatelessWidget {
  const StoresList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: [
        for (final stores in kStoresDummyData) StoresCard(stores: stores),
      ],
    );
  }
}
