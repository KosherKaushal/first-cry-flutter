import 'package:flutter/material.dart';

class TrendingDivider extends StatelessWidget {
  const TrendingDivider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 1.0,
      indent: 50.0,
      endIndent: 50.0,
      color: Colors.black87,
    );
  }
}
