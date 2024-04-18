import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';
import 'package:flutter_application_2/routes/app_router.gr.dart';

final GlobalKey<NavigatorState> homeTabNavigatorKey =
    GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> courseTabNavigatorKey =
    GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> homeScreenNavigationGlobalKey =
    GlobalKey<NavigatorState>();

@RoutePage()
class HomeScreenNavigation extends StatelessWidget {
  const HomeScreenNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      key: homeScreenNavigationGlobalKey,
      routes: const [
        HomeRoute(),
        CoursesRoute(),
        FavouriteRoute(),
        LogedProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return CustomBottomNavigationBar(
          selectedInd: tabsRouter.activeIndex,
          onItemTapped: tabsRouter.setActiveIndex,
        );
      },
      // body: IndexedStack(
      //   index: _selectedIndex,
      //   children: [
      //     CustomNavigation(
      //       navigatorKey: homeTabNavigatorKey,
      //       generatedRoute: logedHomeGeneratedPageRoutes,
      //       initialRoute: homeRouteNavigation,
      //     ),
      //     CustomNavigation(
      //       navigatorKey: courseTabNavigatorKey,
      //       generatedRoute: myCoursesRoutes,
      //       initialRoute: allCoursesRoute,
      //     ),
      //     const FavouriteScreen(),
      //     const LogedProfileScreen(),
      //   ],
      // ),
      // bottomNavigationBar: CustomBottomNavigationBar(
      //   selectedInd: _selectedIndex,
      //   onItemTapped: (int index) {
      //     setState(() {
      //       _selectedIndex = index;
      //     });
      //   },
      // ),
    );
  }
}
