import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class SocialButton extends StatelessWidget {
  SocialButton._({super.key, this.data, required this.onPress});

  SocialButton.custom({super.key, required this.data, required this.onPress});

  SocialButton.google({super.key, required this.onPress}) {
    data = Social.google;
    this.onPress = onPress;
  }

  SocialButton.apple({super.key, required this.onPress}) {
    data = Social.apple;
  }

  SocialButton.facebook({super.key, required this.onPress}) {
    data = Social.facebook;
  }

  Social? data;
  VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: 78.0,
        height: 78.0,
        decoration:
            containerBox.copyWith(borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                data?.image ?? '',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              data?.title ?? browser.localized,
              style: roboto12TextStyle.copyWith(color: white),
            ),
          ],
        ),
      ),
    );
  }
}
