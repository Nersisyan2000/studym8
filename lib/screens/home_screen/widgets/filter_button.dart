import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  const FilterButton(
      {super.key, this.backgroundColor, this.textStyle, required this.title});

  final Color? backgroundColor;
  final TextStyle? textStyle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            )),
        onPressed: () {},
        child: Text(
          title,
          style: textStyle,
        ));
  }
}
