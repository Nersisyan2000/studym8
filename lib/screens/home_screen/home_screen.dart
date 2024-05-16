import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';
import 'package:flutter_application_2/routes/app_router.gr.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ProfileTile(),
            const CustomSearchInput(),
            const CustomCarousel(),
            Text(
              makeProgressListTitle.localized,
              style: roboto16TextStyle,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var aboutCourse in aboutCoursesProgressData)
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        width:
                            MediaQuery.of(context).size.width * 268.0 / 390.0,
                        child: AspectRatio(
                          aspectRatio: 268.0 / 156.0,
                          child: CourseProgressItem(
                            courseNumber: aboutCourse.courseNumber,
                            coursesLength: aboutCoursesProgressData.length,
                            courseName: aboutCourse.courseName,
                            didProgressNumber: aboutCourse.didProgressNumber,
                          ),
                        ),
                      ),
                    )
                ],
              ),
            ),
            PopularCourses(
              onTapSeeAll: () {
                // context.router.pushNamed('all-courses-route');
                // context.innerRouterOf<TabsRouter>('all-courses-route');
                // final router = rootR
                //     context.innerRouterOf<StackRouter>(OnboardRoute.name);
                // print(context.router.root);
                // // print(context.router.root.push(route));
                // print(context.router.current);
                AutoRouter.of(context).push(const AllCoursesRoute());

                // AutoRouter.of(context)
                //     .innerRouterOf<StackRouter>('all-courses-route');
                // route.push(const AllCoursesRoute());
                // print(context.router.currentChild!.name);

                // AppRouter.of(context)
                //     .context
                //     .tabsRouter
                //     .childControllers[0]
                //     .navigate(const AllCoursesRoute());

                // final router = _innerRouterKey.currentState?.controller;
                // router?.push(const AllCoursesRoute());
              },
            ),
          ],
        ),
      )),
    );
  }
}
