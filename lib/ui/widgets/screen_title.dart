import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 34.0,
        ),
        Text(
          textAlign: TextAlign.center,
          title,
          style: roboto24TextStyle.copyWith(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
