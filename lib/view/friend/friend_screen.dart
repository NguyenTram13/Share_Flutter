import 'package:flutter/material.dart';
import 'package:lvflutter/component/main_header.dart';

class FriendScreen extends StatelessWidget {
  const FriendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MainHeader(),
          SizedBox(
            height: 8.0,
          )
        ],
      ),
    );
  }
}
