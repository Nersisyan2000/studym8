import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class ViewInstance extends StatelessWidget {
  const ViewInstance({super.key, required this.data});

  final OnboardingData data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Text(
            data.title,
            style: roboto32TextStyle,
          ),
        ),
        Expanded(child: Image(image: AssetImage(data.image))),
        Text(
          textAlign: TextAlign.center,
          data.description,
          style: roboto24TextStyle.copyWith(fontWeight: FontWeight.w400),
        ),
      ],
    ));
  }
}
