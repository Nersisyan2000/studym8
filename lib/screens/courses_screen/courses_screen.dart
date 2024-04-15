import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({
    super.key,
  });

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  int screenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            textAlign: TextAlign.center,
            myCourses.localized,
            style: roboto24TextStyle.copyWith(
                fontWeight: FontWeight.w500, color: black),
          ),
          automaticallyImplyLeading: false,
          bottom: TabBar(
            splashFactory: NoSplash.splashFactory,
            unselectedLabelColor: black,
            dividerColor: white,
            indicatorSize: TabBarIndicatorSize.label,
            onTap: (int i) {
              setState(() {
                screenIndex = i;
              });
            },
            tabs: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Text(ongoing.localized),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Text(completed.localized),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Text(certificates.localized),
              ),
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TabBarView(
            children: [
              Courses(),
              Center(child: Text('Completed')),
              Center(child: Text('Certificates')),
            ],
          ),
        ),
      ),
    );
  }
}
