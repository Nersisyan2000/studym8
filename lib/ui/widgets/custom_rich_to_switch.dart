import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class CustomRichToSwitch extends StatelessWidget {
  const CustomRichToSwitch(
      {super.key,
      required this.primaryText,
      required this.clicableText,
      required this.onPress});

  final String primaryText;
  final String clicableText;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
            text: primaryText,
          ),
          TextSpan(children: [
            const WidgetSpan(
              child: Padding(
                padding: EdgeInsets.only(left: 4.0),
              ),
            ),
            TextSpan(
                text: clicableText,
                style: roboto16TextStyle.copyWith(color: orange),
                recognizer: TapGestureRecognizer()
                  ..onTap = onPress),
          ]),
        ],
      ),
    );
  }
}
