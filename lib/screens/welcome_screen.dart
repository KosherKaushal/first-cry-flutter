import 'package:first_cry_flutter/common/app_color.dart';
import 'package:first_cry_flutter/provider/google_signin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../common/constants.dart';
import '../common/ui_assistance.dart';
import '../widgets/signin_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = "WelcomeScreen";
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(child: CircularProgressIndicator.adaptive())
          : Scaffold(
              appBar: CupertinoNavigationBar(
                middle: Text(
                  'FirstCry',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: primaryBlue,
                      ),
                ),
                automaticallyImplyLeading: false,
              ),
              // backgroundColor: primaryOrange,
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Center(
                        child: Text(
                          'Welcome to Asia\'s favourite baby and kids shopping platform.',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Spacer(),

                      ///Google Sign In Button
                      SignInButton(
                          widget: Image.asset(
                            'images/google-logo.png',
                            height: 21.0,
                          ),
                          title: 'Continue with Google',
                          onTap: () {
                            final provider = Provider.of<GoogleSignInProvider>(
                                context,
                                listen: false);
                            provider.googleLogin();
                          }),

                      /// Terms of Use and Privacy Policy Button
                      UIAssistance.verticalSpaceMedium(),
                      RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodySmall,
                          children: [
                            const TextSpan(
                                text: 'By continuing, you agree to our '),
                            TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    //direct to terms page
                                  },
                                text: 'Terms',
                                style: kWelcomeRichTextStyle),
                            const TextSpan(text: ' and '),
                            TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    //direct to Policy page
                                  },
                                text: 'Privacy Policy',
                                style: kWelcomeRichTextStyle),
                            const TextSpan(text: '.'),
                          ],
                        ),
                        textHeightBehavior: const TextHeightBehavior(
                          applyHeightToFirstAscent: false,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      UIAssistance.verticalSpaceMedium(),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
