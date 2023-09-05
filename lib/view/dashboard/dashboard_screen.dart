import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:get/get.dart';
import 'package:lvflutter/controller/dashboard_controller.dart';
import 'package:lvflutter/view/friend/friend_screen.dart';
import 'package:lvflutter/view/home/hone_screen.dart';
import 'package:lvflutter/view/profile/profile_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) => Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              const HomeScreen(),
              Container(
                child: FriendScreen(),
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(child: ProfileScreen()),
              Container(
                color: Colors.orange,
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          // decoration: BoxDecoration(
          //   color: Colors.white,
          //   border: Border(
          //     top: BorderSide(
          //       color: Theme.of(context).colorScheme.secondary,
          //       width: 0.7,
          //     ),
          //   ),
          // ),
          child: SnakeNavigationBar.color(
            behaviour: SnakeBarBehaviour.floating,
            snakeShape: SnakeShape.circle,
            // padding: const EdgeInsets.symmetric(vertical: 5),
            unselectedLabelStyle: const TextStyle(fontSize: 11),
            snakeViewColor: Theme.of(context).primaryColor,
            unselectedItemColor: Theme.of(context).colorScheme.secondary,
            showSelectedLabels: true,
            currentIndex: controller.tabIndex,
            onTap: (val) {
              controller.updateIndex(val);
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people_outline), label: 'Friends'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.ondemand_video_outlined), label: 'Watch'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_outlined),
                  label: 'Notifications'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline_sharp), label: 'Profile'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu_outlined), label: 'Menu'),
            ],
          ),
        ),
      ),
    );
  }
}
