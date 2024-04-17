import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: projectTitle.localized,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: purple),
        useMaterial3: true,
      ),
      onGenerateRoute: onGenerateRoute,
      /// TODO: - maini mej piti lini initial route mijankyal, vortex piti voroshvi useri muty
      navigatorKey: navigatorKey,
    );
  }
}
