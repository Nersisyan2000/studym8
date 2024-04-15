import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(right: 10.0),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(homeProfileData.image),
        radius: 50.0,
      ),
      title: Text(homeProfileData.title,
          style: roboto16TextStyle.copyWith(fontWeight: FontWeight.w400)),
      subtitle: Text(
        homeProfileData.name,
        style: roboto16TextStyle,
      ),
      trailing: homeProfileData.filledBellIcon,
    );
  }
}
