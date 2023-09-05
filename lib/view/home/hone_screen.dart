import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:lvflutter/component/main_header.dart';
import 'package:lvflutter/controller/controller.dart';
import 'package:lvflutter/view/home/components/post/carousel_loading.dart';
import 'package:lvflutter/view/home/components/post/post_create.dart';
import 'package:lvflutter/view/home/components/post/post_view.dart';
import 'package:lvflutter/view/home/components/story/story_slider.dart';
// import 'package:lvflutter/view/home/components/carousel_slider/create_post.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const MainHeader(),
          SizedBox(height: 8.0),
          PostCreate(),
          SizedBox(height: 8.0),
          StorySlider(),
          Row(
            children: [
              Container(
                width: 360,
                height: 10,
                color: Colors.black26,
              )
            ],
          ),
          Obx(() {
            if (!homeController.isPostLoading.value) {
              return PostView(
                postList: homeController.postList,
              );
            } else {
              return const CarouselLoading();
            }
          }),
          SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
