import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton._(
      {super.key,
      required this.title,
      required this.onPress,
      this.backgroundColor,
      this.fontSize,
      this.foregroundColor,
      this.height});

  factory CustomElevatedButton.mainButton(
      {required String title, required VoidCallback onPress}) {
    return CustomElevatedButton._(
      title: title,
      onPress: onPress,
      backgroundColor: white,
      foregroundColor: purple,
      fontSize: 24.0,
    );
  }

  factory CustomElevatedButton.primary(
      {required String title, required VoidCallback onPress}) {
    return CustomElevatedButton._(
      title: title,
      onPress: onPress,
      backgroundColor: whiteSecond,
      foregroundColor: purple,
      fontSize: 16.0,
    );
  }

  factory CustomElevatedButton.purpleButton(
      {required String title, required VoidCallback onPress}) {
    return CustomElevatedButton._(
      title: title,
      onPress: onPress,
      backgroundColor: purple,
      foregroundColor: white,
      fontSize: 16.0,
    );
  }

  factory CustomElevatedButton.purpleHighButton(
      {required String title,
      required double height,
      required VoidCallback onPress}) {
    return CustomElevatedButton._(
      title: title,
      onPress: onPress,
      height: height,
      backgroundColor: purple,
      foregroundColor: white,
      fontSize: 16.0,
    );
  }

  final String title;
  final VoidCallback onPress;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? fontSize;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          minimumSize: MaterialStatePropertyAll(Size(167.0, height ?? 48.0)),
          shape: const MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          )),
          textStyle: MaterialStatePropertyAll(TextStyle(fontSize: fontSize)),
          foregroundColor: MaterialStatePropertyAll(foregroundColor),
          backgroundColor: MaterialStatePropertyAll(backgroundColor)),
      onPressed: onPress,
      child: Text(title),
    );
  }
}
