import 'package:flutter/material.dart';

class ProgressesPage extends StatelessWidget {
  const ProgressesPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
      ],
    );
  }
}
