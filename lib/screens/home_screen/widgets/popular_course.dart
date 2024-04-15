import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class PopularCourse extends StatelessWidget {
  const PopularCourse(
      {super.key,
      required this.img,
      required this.title,
      required this.raiting});

  final String img;
  final String title;
  final double raiting;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Image.asset(img),
        Container(
          decoration: popularCourseDecoration,
          width: 167.0,
          height: 24.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                style: roboto12TextStyle.copyWith(color: white),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 2.0),
                    child: Text(
                      '$raiting',
                      style: roboto12TextStyle.copyWith(color: white),
                    ),
                  ),
                  const Icon(
                    Icons.star,
                    color: orangeSecond,
                    size: 12.0,
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
