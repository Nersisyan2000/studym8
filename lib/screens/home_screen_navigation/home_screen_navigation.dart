import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

final GlobalKey<NavigatorState> homeTabNavigatorKey =
    GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> courseTabNavigatorKey =
    GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> homeScreenNavigationGlobalKey =
    GlobalKey<NavigatorState>();

class HomeScreenNavigation extends StatefulWidget {
  const HomeScreenNavigation({super.key, this.selectedInd});

  // final ProfileDataArguments? arguments;
  final int? selectedInd;

  @override
  State<HomeScreenNavigation> createState() => _HomeScreenNavigationState();
}

class _HomeScreenNavigationState extends State<HomeScreenNavigation> {
  int _selectedIndex = 0;

  @override
  void initState() {
    _selectedIndex = widget.selectedInd ?? 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homeScreenNavigationGlobalKey,
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          CustomNavigation(
            navigatorKey: homeTabNavigatorKey,
            generatedRoute: logedHomeGeneratedPageRoutes,
            initialRoute: logedHomeRoute,
          ),
          CustomNavigation(
            navigatorKey: courseTabNavigatorKey,
            generatedRoute: myCoursesRoutes,
            initialRoute: allCoursesRoute,
          ),
          const FavouriteScreen(),
          /// TODO: - inchi 2 hat profile unis ????
          const LogedProfileScreen(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedInd: _selectedIndex,
        onItemTapped: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
