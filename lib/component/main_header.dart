import 'package:flutter/material.dart';
import 'package:badges/src/badge.dart' as badge;
import 'package:flutter/cupertino.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0, // Adjust the height as needed
      color: Colors.orange, // Facebook's header color
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Social',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.search,
                color: Colors.white,
                size: 28.0,
              ),
              const SizedBox(width: 12.0),
              // const Icon(
              //   Icons.chat_bubble,
              //   color: Colors.white,
              //   size: 28.0,
              // ),
              badge.Badge(
                badgeContent: Text(
                  '1',
                  style: TextStyle(color: Colors.white),
                ),
                child: Container(
                  child: Icon(
                    Icons.chat_bubble,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
