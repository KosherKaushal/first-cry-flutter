import 'package:flutter/material.dart';

import '../common/ui_assistance.dart';

class SignInButton extends StatelessWidget {
  final Widget widget;
  final String title;
  final VoidCallback onTap;

  const SignInButton({
    Key? key,
    required this.widget,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
        tileColor: Colors.white,
        visualDensity: VisualDensity.compact,
        minVerticalPadding: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: const BorderSide(color: Colors.black12),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget,
            UIAssistance.horizontalSpaceSmall(),
            Text(title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.black,
                      fontSize: 19.0,
                    )),
          ],
        ),
        onTap: onTap);
  }
}
