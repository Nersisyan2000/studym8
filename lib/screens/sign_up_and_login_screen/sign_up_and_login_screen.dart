import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class SignUpAndLoginScreen extends StatefulWidget {
  const SignUpAndLoginScreen({super.key, required this.arguments});

  final int arguments;

  @override
  State<SignUpAndLoginScreen> createState() => _SignUpAndLoginScreenState();
}

class _SignUpAndLoginScreenState extends State<SignUpAndLoginScreen> {
  late int screenIndex;

  @override
  void initState() {
    setState(() {
      screenIndex = widget.arguments;
      debugPrint('$screenIndex');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            screenIndex == 0 ? welcome.localized : welcomeBack.localized,
            style: roboto24TextStyle.copyWith(color: black),
          ),
          automaticallyImplyLeading: false,
          bottom: TabBar(
            tabAlignment: TabAlignment.center,
            splashFactory: NoSplash.splashFactory,
            automaticIndicatorColorAdjustment: false,
            unselectedLabelColor: black,
            labelColor: white,
            dividerColor: white,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: tabBarBoxStyle,
            onTap: (int i) {
              setState(() {
                screenIndex = i;
              });
            },
            tabs: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 25.0, vertical: 10.0),
                child: Text(signUp.localized),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 25.0, vertical: 10.0),
                child: Text(login.localized),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TabBarView(
            children: [
              SignUpScreen(
                onPress: () {
                  setState(() {
                    screenIndex = 1;
                  });
                },
              ),
              LoginScreen(onPress: () {
                setState(() {
                  screenIndex = 0;
                });
              }),
            ],
          ),
        ),
      ),
    );
  }
}
