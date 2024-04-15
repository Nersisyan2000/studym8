import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class DividerWithText extends StatelessWidget {
  const DividerWithText({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      const Expanded(child: Divider()),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Text(
          title,
          style: roboto16TextStyle.copyWith(fontWeight: FontWeight.w500),
        ),
      ),
      const Expanded(child: Divider()),
    ]);
  }
}
