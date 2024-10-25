import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (var course in CoursesData.values) CustomCard(data: course)
      ],
    );
  }
}
