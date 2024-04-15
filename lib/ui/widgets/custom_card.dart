import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.data});

  final CoursesData data;

  double normalize(double value, double min, double max) {
    return ((value - min) / (max - min)).clamp(0, 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, singleCourseRoute, arguments: data);
            },
            leading: Image.asset(data.img),
            title: Text(
              data.title,
              style: roboto16TextStyle.copyWith(fontWeight: FontWeight.w500),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    data.time,
                    style:
                        roboto16TextStyle.copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: LinearProgressIndicator(
                    backgroundColor: white,
                    value: normalize(data.progress, 0, 100),
                    minHeight: 7.0,
                    borderRadius: BorderRadius.circular(10),
                    valueColor: const AlwaysStoppedAnimation(purple),
                  ),
                ),
                Text(
                  data.videoCount,
                  style: roboto12TextStyle,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
