import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class PopularCourses extends StatelessWidget {
  const PopularCourses({super.key, this.onTapSeeAll});

  final VoidCallback? onTapSeeAll;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(popularCourses.localized, style: roboto16TextStyle),
                InkWell(
                  onTap: onTapSeeAll,
                  child: Text(seeAll.localized,
                      style: roboto16TextStyle.copyWith(
                          fontWeight: FontWeight.w400)),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (var course in PopularCoursesEnum.values)
                PopularCourse(
                  img: course.img,
                  title: course.title,
                  raiting: course.raiting,
                )
            ],
          )
        ],
      ),
    );
  }
}
