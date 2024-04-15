import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeRoute:
      return MaterialPageRoute(
        builder: (context) => const SearchScreen(),
        settings: settings,
      );
    case onboardingRoute:
      return MaterialPageRoute(
          builder: (context) => const OnboardScreen(), settings: settings);
    case getYouInRoute:
      return MaterialPageRoute(
          builder: (context) => const GetYouInScreen(), settings: settings);
    case enrollPaymentRoute:
      return MaterialPageRoute(
        builder: (context) => const EnrollPaymentOptionsScreen(),
        settings: settings,
      );
    case signUpAndLoginRoute:
      return MaterialPageRoute(
        builder: (context) => SignUpAndLoginScreen(
          arguments: settings.arguments as int,
        ),
        settings: settings,
      );
    case profileRoute:
      return MaterialPageRoute(
        builder: (context) => const ProfileScreen(),
        settings: settings,
      );
    case logedHomeRoute:
      return MaterialPageRoute(
        builder: (context) => HomeScreenNavigation(
          // arguments: settings.arguments as ProfileData,
          selectedInd: settings.arguments as int,
        ),
        settings: settings,
      );
    case singleCourseRoute:
      return MaterialPageRoute(
        builder: (context) => SingleCourseScreen(
          arguments: settings.arguments as CoursesData,
        ),
        settings: settings,
      );
    case singlePopularCourseRoute:
      return MaterialPageRoute(
        builder: (context) => SinglePopularCourse(
          arguments: settings.arguments as AllCoursesData,
        ),
        settings: settings,
      );
    case enrollCourseRoute:
      return MaterialPageRoute(
          builder: (context) => const EnrollCourse(), settings: settings);
    case searchRoute:
      return MaterialPageRoute(
          builder: (context) => const SearchScreen(), settings: settings);
    default:
      return MaterialPageRoute(
          builder: (context) => const Center(
                child: Text('Page not found!'),
              ));
  }
}

Route<dynamic> myCoursesRoutes(RouteSettings settings) {
  return MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) {
        switch (settings.name) {
          case allCoursesRoute:
            return const CoursesScreen();
          case singleCourseRoute:
            return SingleCourseScreen(
                arguments: settings.arguments as CoursesData);
          default:
            return const Center(
              child: Text('Page not found!'),
            );
        }
      });
}

Route<dynamic> logedHomeGeneratedPageRoutes(RouteSettings settings) {
  return MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) {
        switch (settings.name) {
          case logedHomeRoute:
            return const HomeScreen();
          case allCoursesRoute:
            return const AllCourses();
          default:
            return const Center(
              child: Text('Home not found!'),
            );
        }
      });
}
