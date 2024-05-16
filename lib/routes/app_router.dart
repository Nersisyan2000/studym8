import 'package:auto_route/auto_route.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: FirstPage.page, initial: true),
        AutoRoute(page: OnboardRoute.page),
        AutoRoute(page: GetYouInRoute.page),
        AutoRoute(page: SignUpAndLoginRoute.page),
        AutoRoute(page: ProfileRoute.page),
        AutoRoute(page: HomeRouteNavigation.page, children: [
          AutoRoute(page: EmptyRouterRoute.page, children: [
            AutoRoute(page: HomeRoute.page, initial: true),
            AutoRoute(page: AllCoursesRoute.page),
            AutoRoute(page: SinglePopularCourseRoute.page),
          ]),
          AutoRoute(page: CoursesRoute.page),
          AutoRoute(page: FavouriteRoute.page),
          AutoRoute(page: LogedProfileRoute.page),
        ]),
      ];

  static of(BuildContext context) {}
}
