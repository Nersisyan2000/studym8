import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';
import 'package:flutter_application_2/routes/app_router.gr.dart';

@RoutePage()
class AllCoursesScreen extends StatelessWidget {
  const AllCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            homeTabNavigatorKey.currentState!.pop();
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Icon(CupertinoIcons.text_alignleft, color: purple),
          ),
        ),
        title: Text(
          allCourses.localized,
          style: roboto24TextStyle.copyWith(
              color: black, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30.0),
            child: Icon(CupertinoIcons.bell_fill, color: purple),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            childAspectRatio: 0.6,
            children: [
              for (var course in allCoursesData)
                InkWell(
                  onTap: () {
                    context.router
                        .push(SinglePopularCourseRoute(arguments: course));
                    // navigatorKey.currentState!
                    //     .pushNamed(singlePopularCourseRoute, arguments: course);
                  },
                  child: Course(
                    courseName: course.courseName,
                    courseTutor: course.courseTutor,
                    image: course.img,
                    raiting: course.raiting,
                    cost: course.cost,
                  ),
                )
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
