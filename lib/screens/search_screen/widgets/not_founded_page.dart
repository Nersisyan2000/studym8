import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/index.dart';

class NotFoundedPage extends StatefulWidget {
  const NotFoundedPage({super.key, required this.value});

  final String value;

  @override
  State<NotFoundedPage> createState() => _NotFoundedPageState();
}

class _NotFoundedPageState extends State<NotFoundedPage> {
  @override
  void initState() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        StatusLine(
          leftTitle: '${resultFor.localized} “${widget.value}”',
          rightTitle: notFounded.localized,
          onClearAll: () {},
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(smileImg.localized),
              Text(
                notFound.localized,
                style: roboto24TextStyle.copyWith(
                    fontWeight: FontWeight.w500, color: black),
              ),
              Text(
                textAlign: TextAlign.center,
                notFoundDescription.localized,
                style: roboto16TextStyle.copyWith(fontWeight: FontWeight.w400),
              )
            ],
          ),
        )
      ],
    ));
  }
}
