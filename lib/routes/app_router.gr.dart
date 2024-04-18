// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:flutter_application_2/screens/all_courses/all_courses.dart'
    as _i1;
import 'package:flutter_application_2/screens/courses_screen/courses_screen.dart'
    as _i2;
import 'package:flutter_application_2/screens/favourites_screen/favourites_screen.dart'
    as _i3;
import 'package:flutter_application_2/screens/get_you_in_screen/get_you_in_screen.dart'
    as _i5;
import 'package:flutter_application_2/screens/home_screen/home_screen.dart'
    as _i6;
import 'package:flutter_application_2/screens/home_screen_navigation/home_screen_navigation.dart'
    as _i7;
import 'package:flutter_application_2/screens/loged_profile_screen/loged_profile_screen.dart'
    as _i8;
import 'package:flutter_application_2/screens/onboard_screen/onboard_screen.dart'
    as _i9;
import 'package:flutter_application_2/screens/profile_screen/profile_screen.dart'
    as _i10;
import 'package:flutter_application_2/screens/sign_up_and_login_screen/sign_up_and_login_screen.dart'
    as _i11;
import 'package:flutter_application_2/screens/start_screen/start_page.dart'
    as _i4;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    AllCoursesRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AllCoursesScreen(),
      );
    },
    CoursesRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CoursesScreen(),
      );
    },
    FavouriteRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.FavouriteScreen(),
      );
    },
    FirstPage.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.FirstPage(),
      );
    },
    GetYouInRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.GetYouInScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeScreen(),
      );
    },
    HomeRouteNavigation.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomeScreenNavigation(),
      );
    },
    LogedProfileRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LogedProfileScreen(),
      );
    },
    OnboardRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.OnboardScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.ProfileScreen(),
      );
    },
    SignUpAndLoginRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpAndLoginRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.SignUpAndLoginScreen(
          key: args.key,
          arguments: args.arguments,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AllCoursesScreen]
class AllCoursesRoute extends _i12.PageRouteInfo<void> {
  const AllCoursesRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AllCoursesRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllCoursesRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CoursesScreen]
class CoursesRoute extends _i12.PageRouteInfo<void> {
  const CoursesRoute({List<_i12.PageRouteInfo>? children})
      : super(
          CoursesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoursesRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.FavouriteScreen]
class FavouriteRoute extends _i12.PageRouteInfo<void> {
  const FavouriteRoute({List<_i12.PageRouteInfo>? children})
      : super(
          FavouriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavouriteRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.FirstPage]
class FirstPage extends _i12.PageRouteInfo<void> {
  const FirstPage({List<_i12.PageRouteInfo>? children})
      : super(
          FirstPage.name,
          initialChildren: children,
        );

  static const String name = 'FirstPage';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.GetYouInScreen]
class GetYouInRoute extends _i12.PageRouteInfo<void> {
  const GetYouInRoute({List<_i12.PageRouteInfo>? children})
      : super(
          GetYouInRoute.name,
          initialChildren: children,
        );

  static const String name = 'GetYouInRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomeScreen]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.HomeScreenNavigation]
class HomeRouteNavigation extends _i12.PageRouteInfo<void> {
  const HomeRouteNavigation({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRouteNavigation.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouteNavigation';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LogedProfileScreen]
class LogedProfileRoute extends _i12.PageRouteInfo<void> {
  const LogedProfileRoute({List<_i12.PageRouteInfo>? children})
      : super(
          LogedProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'LogedProfileRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.OnboardScreen]
class OnboardRoute extends _i12.PageRouteInfo<void> {
  const OnboardRoute({List<_i12.PageRouteInfo>? children})
      : super(
          OnboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ProfileScreen]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SignUpAndLoginScreen]
class SignUpAndLoginRoute extends _i12.PageRouteInfo<SignUpAndLoginRouteArgs> {
  SignUpAndLoginRoute({
    _i13.Key? key,
    required int arguments,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          SignUpAndLoginRoute.name,
          args: SignUpAndLoginRouteArgs(
            key: key,
            arguments: arguments,
          ),
          initialChildren: children,
        );

  static const String name = 'SignUpAndLoginRoute';

  static const _i12.PageInfo<SignUpAndLoginRouteArgs> page =
      _i12.PageInfo<SignUpAndLoginRouteArgs>(name);
}

class SignUpAndLoginRouteArgs {
  const SignUpAndLoginRouteArgs({
    this.key,
    required this.arguments,
  });

  final _i13.Key? key;

  final int arguments;

  @override
  String toString() {
    return 'SignUpAndLoginRouteArgs{key: $key, arguments: $arguments}';
  }
}