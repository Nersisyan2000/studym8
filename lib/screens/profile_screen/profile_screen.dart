import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  XFile? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ScreenTitle(title: setUpProfile.localized),
              const SizedBox(
                height: 34.0,
              ),
              CustomUpload(
                image: _image,
              ),
              const SizedBox(
                height: 48.0,
              ),
              TextFormField(
                decoration: profileInputStyle,
              ),
              const SizedBox(
                height: 48.0,
              ),
              CustomElevatedButton.purpleHighButton(
                title: textContinue.localized,
                onPress: () {
                  Navigator.pushNamed(context, logedHomeRoute, arguments: 0);
                },
                height: 61.0,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
