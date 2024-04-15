import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class EnrollPaymentOptionsScreen extends StatefulWidget {
  const EnrollPaymentOptionsScreen({super.key});

  @override
  State<EnrollPaymentOptionsScreen> createState() =>
      _EnrollPaymentOptionsScreenState();
}

class _EnrollPaymentOptionsScreenState
    extends State<EnrollPaymentOptionsScreen> {
  SingingCharacter? _character = SingingCharacter.paypal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          enrollCourse.localized,
          style: roboto24TextStyle.copyWith(
              fontWeight: FontWeight.w500, color: black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 34.0),
                  child: Text(
                    selectPaymentMethod.localized,
                    style:
                        roboto16TextStyle.copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
                for (var enroll in SingingCharacter.values)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24.0),
                    child: RadioListTile(
                      shape: circularBorder10,
                      tileColor: gray,
                      controlAffinity: ListTileControlAffinity.trailing,
                      title: Row(
                        children: [
                          Image.asset(enroll.icon),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Text(enroll.title)
                        ],
                      ),
                      value: enroll,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: CustomElevatedButton.purpleHighButton(
                title: 'Enroll Now - \$50',
                onPress: () {
                  Navigator.pushNamed(context, enrollCourseRoute);
                },
                height: 51.0,
              ),
            )
          ],
        ),
      )),
    );
  }
}
