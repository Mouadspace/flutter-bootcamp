import 'package:flutter/material.dart';

import 'widgets/box_item.dart';
import 'widgets/custum_top.dart';
import 'widgets/photo_profile.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> profileList = [
      {"iconPath": "assets/icons/svg/User Icon.svg", "title": "My Account"},
      {"iconPath": "assets/icons/svg/Bell.svg", "title": "Notifications"},
      {"iconPath": "assets/icons/svg/Settings.svg", "title": "Settings"},
      {
        "iconPath": "assets/icons/svg/Question mark.svg",
        "title": "Help Center"
      },
      {"iconPath": "assets/icons/svg/Log out.svg", "title": "Log out"},
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustumTop(
                title: "Profile",
              ),
              const PhotoProfile(),
              Column(
                children: List.generate(profileList.length, (index) {
                  return BoxItem(
                    title: profileList[index]['title']!,
                    iconPath: profileList[index]['iconPath']!,
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
