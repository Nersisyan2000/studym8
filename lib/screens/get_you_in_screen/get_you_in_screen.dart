import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';
import 'package:flutter_application_2/resources/constants/constants.dart';
import 'package:flutter_application_2/routes/app_router.gr.dart';

@RoutePage()
class GetYouInScreen extends StatelessWidget {
  const GetYouInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(clipPathGroupImgPath.localized)),
            DefaultTextStyle(
              style: const TextStyle(color: white),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Text(
                      getYouInTitle.localized,
                      style: roboto24TextStyle.copyWith(
                          fontWeight: FontWeight.w500, color: black),
                    ),
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
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                textAlign: TextAlign.center,
                or.localized,
                style: roboto24TextStyle.copyWith(
                    fontWeight: FontWeight.w500, color: black),
              ),
            ),
            ElevatedButton(
              style: customElevatedButtonStyle,
              onPressed: () {
                context.router.push(SignUpAndLoginRoute(arguments: 1));
              },
              child: Text(
                signInWithPassword.localized,
                style: roboto16TextStyle.copyWith(
                    fontWeight: FontWeight.w500, color: white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: RichText(
                  text: TextSpan(
                children: [
                  TextSpan(
                      text: toSignUpTextPartOne.localized,
                      style: roboto16TextStyle.copyWith(
                          fontWeight: FontWeight.w400)),
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, signUpAndLoginRoute,
                              arguments: 0);
                        },
                        child: Text(
                          createAccount.localized,
                          style: roboto16TextStyle.copyWith(color: orange),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
