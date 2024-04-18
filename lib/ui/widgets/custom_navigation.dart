import 'package:flutter/material.dart';

class CustomNavigation extends StatelessWidget {
  const CustomNavigation(
      {super.key,
      this.initialRoute,
      required this.generatedRoute,
      required this.navigatorKey});

  final String? initialRoute;
  final Route<dynamic>? Function(RouteSettings) generatedRoute;
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: initialRoute ?? '/',
      onGenerateRoute: generatedRoute,
    );
  }
}
