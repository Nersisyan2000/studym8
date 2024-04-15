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
  'https://www.pikpng.com/pngl/m/80-805068_my-profile-icon-blank-profile-picture-circle-clipart.png',
  goodMorning.localized,
  benjamin.localized,
  const Icon(CupertinoIcons.bell_fill, color: purple),
  const Icon(CupertinoIcons.bell, color: purple),
);
