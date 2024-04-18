import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final innerRouterKey = GlobalKey<AutoRouterState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      key: innerRouterKey,
      title: projectTitle.localized,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: purple),
        useMaterial3: true,
      ),
      routerConfig: _appRouter.config(),
    );
  }
}

// return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: projectTitle.localized,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: purple),
//         useMaterial3: true,
//       ),
//       onGenerateRoute: onGenerateRoute,
//       navigatorKey: navigatorKey,
//     );
