import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class EnrollBottomSheet extends StatelessWidget {
  const EnrollBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Image.asset(successfullyEnrolledImg.localized),
            Text(
              successfullyEnrolled.localized,
              style: roboto24TextStyle.copyWith(
                  fontWeight: FontWeight.w500, color: black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomElevatedButton.purpleButton(
                  title: viewCourse.localized,
                  onPress: () {
                    Navigator.pushNamed(context, logedHomeRoute, arguments: 1);
                  },
                ),
                const SizedBox(
                  width: 16.0,
                ),
                CustomElevatedButton.primary(
                  title: paymentReceipt.localized,
                  onPress: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
    ;
  }
}
