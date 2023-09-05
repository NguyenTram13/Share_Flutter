import 'package:flutter/material.dart';
import 'package:lvflutter/component/main_header.dart';
import 'package:lvflutter/view/profile/components/profile_header.dart';
import 'package:lvflutter/view/profile/components/profile_view.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ProfileHeader(),
          ProfileView(),
        ],
      ),
    );
  }
}
