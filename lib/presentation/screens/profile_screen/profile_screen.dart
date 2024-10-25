import 'package:auto_route/auto_route.dart';
import 'package:flutter_application_2/routes/app_router.gr.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

@RoutePage()
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
                  context.router.push(HomeRouteNavigation());
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
