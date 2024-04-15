import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key, required this.onPress});

  final VoidCallback onPress;

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 24.0,
          ),
          Text(
            signUpTitle.localized,
            style: poppins16TextStyle,
          ),
          const SizedBox(
            height: 34.0,
          ),
          const CustomForm(
            isLogin: false,
          ),
          const SizedBox(
            height: 34.0,
          ),
          DividerWithText(title: signUpWith.localized),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SocialButton.google(onPress: () {
                debugPrint('Autorize google');
              }),
              SocialButton.apple(onPress: () {
                debugPrint('Autorize apple');
              }),
              SocialButton.facebook(onPress: () {
                debugPrint('Autorize facebook');
              }),
            ],
          ),
          const SizedBox(
            height: 24.0,
          ),
          CustomRichToSwitch(
            primaryText: alreadyHaveAccount.localized,
            clicableText: login.localized,
            onPress: widget.onPress,
          ),
          const SizedBox(
            height: 16.0,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: signUpTextRichPartOne.localized,
                  style:
                      roboto16TextStyle.copyWith(fontWeight: FontWeight.w400),
                ),
                TextSpan(children: [
                  const WidgetSpan(
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.0),
                    ),
                  ),
                  TextSpan(
                      text: signUpTextRichPartTwo.localized,
                      style: roboto16TextStyle.copyWith(color: orange),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => debugPrint('Terms of Service')),
                  TextSpan(children: [
                    const WidgetSpan(
                      child: Padding(
                        padding: EdgeInsets.only(left: 4.0),
                      ),
                    ),
                    TextSpan(
                        text: and.localized,
                        style: roboto16TextStyle.copyWith(
                            fontWeight: FontWeight.w400)),
                    const WidgetSpan(
                      child: Padding(
                        padding: EdgeInsets.only(left: 4.0),
                      ),
                    ),
                  ]),
                  TextSpan(
                      text: privacyPolicy.localized,
                      style: roboto16TextStyle.copyWith(color: orange),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => debugPrint('Privacy Policy')),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
