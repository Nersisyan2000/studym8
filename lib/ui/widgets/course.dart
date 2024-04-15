import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_application_2/index.dart';

class Course extends StatefulWidget {
  const Course({
    super.key,
    required this.image,
    required this.courseTutor,
    required this.courseName,
    required this.raiting,
    this.starSize,
    this.titleTextStyle,
    this.subTextStyle,
    this.cost,
  });

  factory Course.grid(
      {required String image,
      required String courseTutor,
      required String courseName,
      required double raiting}) {
    return Course(
      image: image,
      courseName: courseName,
      courseTutor: courseTutor,
      raiting: raiting,
      starSize: 13.0,
      titleTextStyle: roboto16TextStyle.copyWith(fontWeight: FontWeight.w500),
      subTextStyle: roboto12TextStyle,
    );
  }

  factory Course.singleCourse(
      {required String image,
      required String courseTutor,
      required String courseName,
      required double raiting}) {
    return Course(
      image: image,
      courseName: courseName,
      courseTutor: courseTutor,
      raiting: raiting,
      starSize: 16.0,
      titleTextStyle:
          roboto24TextStyle.copyWith(fontWeight: FontWeight.w500, color: black),
      subTextStyle: roboto16TextStyle.copyWith(fontWeight: FontWeight.w400),
    );
  }

  final String image;
  final String courseTutor;
  final String courseName;
  final double raiting;
  final double? starSize;
  final TextStyle? titleTextStyle;
  final TextStyle? subTextStyle;
  final double? cost;

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  bool liked = false;

  void _setLiked() {
    setState(() {
      liked = !liked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.topRight, children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Image(
              image: AssetImage(widget.image),
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              widget.courseName,
              style: widget.titleTextStyle,
            ),
          ),
          Text(
            widget.courseTutor,
            style: widget.subTextStyle,
          ),
          widget.cost != null
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    'Cost: \$${widget.cost}',
                    style: widget.subTextStyle,
                  ),
                )
              : const SizedBox.shrink(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 9),
                child: Text(
                  '${widget.raiting}',
                  style: widget.subTextStyle,
                ),
              ),
              RatingBar.builder(
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: widget.starSize ?? 13.0,
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  debugPrint('$rating');
                },
              )
            ],
          ),
        ],
      ),
      Padding(
          padding: const EdgeInsets.only(top: 35.0, right: 10.0),
          child: IconButton(
            icon: Icon(liked ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                color: liked ? red : white),
            onPressed: _setLiked,
          ))
    ]);
  }
}
