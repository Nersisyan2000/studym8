import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key, required this.onPress});

  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 24.0,
          ),
          Text(
            loginTitle.localized,
            style: roboto16TextStyle.copyWith(fontWeight: FontWeight.w400),
          ),
          /// TODO: - Ete widgeti 2 koxmn el taracq ka lav e padding tas
          const SizedBox(
            height: 34.0,
          ),
          const CustomForm(
            isLogin: true,
          ),
          const SizedBox(
            height: 34.0,
          ),
          DividerWithText(title: loginWith.localized),
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
          /// TODO: -- onPress chi ashxati
          CustomRichToSwitch(
            primaryText: toSignUpTextPartOne.localized,
            clicableText: createAccount.localized,
            onPress: onPress,
          ),
        ],
      ),
    );
  }
}
