import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/google_signin.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
            onTap: () {
              final provider =
                  Provider.of<GoogleSignInProvider>(context, listen: false);
              provider.signOut();
            },
            child: Text(
              'Sign Out',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Colors.red),
            )),
      ),
    );
  }
}
