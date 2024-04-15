import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class Skill extends StatelessWidget {
  const Skill({super.key, required this.skillTitle});

  final String skillTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: containerBox,
      child: Text(
        skillTitle,
        style: roboto16TextStyle.copyWith(
            fontWeight: FontWeight.w400, color: white),
      ),
    );
  }
}
