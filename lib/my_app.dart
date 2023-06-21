import 'package:first_cry_flutter/provider/google_signin.dart';
import 'package:first_cry_flutter/screens/home_screen.dart';
import 'package:first_cry_flutter/screens/product_screen.dart';
import 'package:first_cry_flutter/screens/welcome_screen.dart';
import 'package:first_cry_flutter/screens/wrapper_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: WrapperScreen.id,
        routes: {
          WrapperScreen.id: (context) => const WrapperScreen(),
          WelcomeScreen.id: (context) => const WelcomeScreen(),
          HomeScreen.id: (context) => const HomeScreen(),
          ProductScreen.id: (context) => const ProductScreen(),
        },
      ),
    );
  }
}
