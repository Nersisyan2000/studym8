import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_application_2/index.dart';

class AboutCourse extends StatefulWidget {
  const AboutCourse(
      {super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  State<AboutCourse> createState() => _AboutCourseState();
}

class _AboutCourseState extends State<AboutCourse> {
  bool readMore = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            widget.title,
            style: roboto16TextStyle,
          ),
        ),
        !readMore
            ? RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: widget.description.substring(1, 200),
                      style: roboto16TextStyle.copyWith(
                          fontWeight: FontWeight.w400),
                    ),
                    const TextSpan(text: '....'),
                    TextSpan(
                      text: readMoreText.localized,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => setState(() {
                              readMore = true;
                            }),
                      style: roboto16TextStyle.copyWith(color: purple),
                    )
                  ],
                ),
              )
            : Text(
                widget.description,
                style: roboto16TextStyle.copyWith(fontWeight: FontWeight.w400),
              ),
      ],
    );
  }
}
