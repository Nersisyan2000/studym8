import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class CustomSearchInput extends StatelessWidget {
  const CustomSearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: purple,
      shape: circularBorder15,
      leading: const Icon(Icons.search, color: white),
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextField(
          enabled: false,
          decoration: searchInputStyle,
        ),
      ),
      trailing: const CustomBottomSheet(),
    );
  }
}
