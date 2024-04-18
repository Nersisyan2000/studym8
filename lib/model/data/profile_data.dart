import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_application_2/index.dart';

class ProfileDataArguments {
  XFile image;
  String name;

  ProfileDataArguments(this.image, this.name);
}

class HomeProfileData {
  String image;
  String title;
  String name;
  Icon filledBellIcon;
  Icon outlinedBellIcon;

  HomeProfileData(this.image, this.title, this.name, this.filledBellIcon,
      this.outlinedBellIcon);
}

HomeProfileData homeProfileData = HomeProfileData(
  'https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTAxL3JtNjA5LXNvbGlkaWNvbi13LTAwMi1wLnBuZw.png',
  goodMorning.localized,
  benjamin.localized,
  const Icon(CupertinoIcons.bell_fill, color: purple),
  const Icon(CupertinoIcons.bell, color: purple),
);
