import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/source/local/preferences/preferences.dart';
import 'package:flutter_application_2/index.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.sharedPrefernces;
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
      title: projectTitle.localized,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: purple),
        useMaterial3: true,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
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
