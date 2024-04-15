import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';
import 'package:flutter_application_2/resources/index.dart';

class CourseProgressItem extends StatefulWidget {
  const CourseProgressItem({
    super.key,
    required this.courseNumber,
    required this.coursesLength,
    required this.didProgressNumber,
    required this.courseName,
  });

  final int courseNumber;
  final String courseName;
  final int coursesLength;
  final double didProgressNumber;

  @override
  State<CourseProgressItem> createState() => _CourseProgressItemState();
}

class _CourseProgressItemState extends State<CourseProgressItem> {
  double normalize(double value, double min, double max) {
    return ((value - min) / (max - min)).clamp(0, 1);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'About ${widget.courseNumber} of ${widget.coursesLength}',
                  style: roboto12TextStyle,
                ),
                const PopUpMenu(),
                // const Icon(Icons.more_horiz),
              ],
            ),
            Text(
              widget.courseName,
              style: roboto16TextStyle,
            ),
            Text('Overall Progress ${widget.didProgressNumber.toInt()}%',
                style: roboto12TextStyle),
            LinearProgressIndicator(
              backgroundColor: white,
              value: normalize(widget.didProgressNumber, 0, 100),
              minHeight: 5.0,
              borderRadius: BorderRadius.circular(10),
              valueColor: const AlwaysStoppedAnimation(orangeSecond),
            )
          ],
        ),
      ),
    );
  }
}
