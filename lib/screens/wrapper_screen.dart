import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_cry_flutter/screens/home_screen.dart';
import 'package:first_cry_flutter/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class WrapperScreen extends StatelessWidget {
  static const String id = "WrapperScreen";
  const WrapperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (snapshot.hasData) {
            return const HomeScreen();
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Something went wrong!'),
            );
          } else {
            return const WelcomeScreen();
          }
        },
      ),
    );
  }
}
