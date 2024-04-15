import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter_application_2/index.dart';

class EnrollCourse extends StatefulWidget {
  const EnrollCourse({super.key});

  @override
  State<EnrollCourse> createState() => _EnrollCourseState();
}

class _EnrollCourseState extends State<EnrollCourse> {
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
        fontSize: 20, color: black, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: whiteSecond,
      borderRadius: BorderRadius.circular(10),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          enrollCourse.localized,
          style: roboto24TextStyle.copyWith(
              fontWeight: FontWeight.w500, color: black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [
                  Text(
                    enterYourPin.localized,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 48.0,
                  ),
                  Pinput(
                    obscureText: true,
                    obscuringWidget: const Text(
                      '•',
                      style: TextStyle(fontSize: 40.0),
                    ),
                    defaultPinTheme: defaultPinTheme,
                    onCompleted: (pin) => debugPrint(pin),
                  )
                ],
              ),
              CustomElevatedButton.purpleButton(
                  title: 'Confirm',
                  onPress: () {
                    showModalBottomSheet<void>(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(50.0)),
                      ),
                      builder: (BuildContext context) {
                        return const EnrollBottomSheet();
                      },
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
