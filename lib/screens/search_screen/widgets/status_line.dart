import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class StatusLine extends StatelessWidget {
  const StatusLine(
      {super.key,
      required this.leftTitle,
      required this.rightTitle,
      required this.onClearAll});

  final String leftTitle;
  final String rightTitle;
  final VoidCallback onClearAll;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftTitle,
            style: roboto16TextStyle,
          ),
          InkWell(
            onTap: onClearAll,
            child: Text(
              rightTitle,
              style: roboto16TextStyle.copyWith(
                  fontWeight: FontWeight.w400, color: purple),
            ),
          ),
        ],
      ),
    );
  }
}
