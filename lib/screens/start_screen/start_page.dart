import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/source/local/preferences/preferences.dart';
import 'package:flutter_application_2/resources/constants/constants.dart';
import 'package:flutter_application_2/index.dart';

@RoutePage()
class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..addListener(() {
            setState(() {});
          });
    controller.repeat(reverse: true);
    Future.delayed(const Duration(seconds: 2), () {
      if (Preferences.getOnBoard) {
        context.router.replaceNamed(getYouInRoute);
      } else {
        context.router.replaceNamed(onboardingRoute);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                study8.localized,
                style: roboto64TextStyle,
              ),
            ),
            CircularProgressIndicator(
              value: controller.value,
              color: white,
            ),
          ],
        ),
      ),
    );
  }
}
