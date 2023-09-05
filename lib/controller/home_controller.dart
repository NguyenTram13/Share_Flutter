import 'package:get/get.dart';
import 'package:lvflutter/model/ad_post.dart';
import 'package:lvflutter/model/ad_story.dart';
import 'package:lvflutter/service/remote_service/remote_post_service.dart';
import 'dart:convert';

import 'package:lvflutter/service/remote_service/remote_story_service.dart';

class HomeController extends GetxController {
  static HomeController instance = Get.find();
  RxList<AdPost> postList = List<AdPost>.empty(growable: true).obs;
  RxBool isPostLoading = false.obs;
  RxList<AdStory> storyList = List<AdStory>.empty(growable: true).obs;
  RxBool isStoryLoading = false.obs;

  @override
  void onInit() {
    getAdPosts();
    getAdStory();
    super.onInit();
  }

  void getAdPosts() async {
    try {
      print('test');
      isPostLoading(true);
      var result = await RemotePostService().get();
      print(result);
      if (result != null) {
        postList.assignAll(AdPostListFromJson(json.encode(result)));
      }
    } finally {
      // print(postList.first.image);
      isPostLoading(false);
    }
  }

  void getAdStory() async {
    try {
      print('test');
      isStoryLoading(true);
      var result = await RemoteStoryService().get();
      print(result);
      if (result != null) {
        storyList.assignAll(AdStoryListFromJson(json.encode(result)));
      }
    } finally {
      // print(StoryList.first.image);
      isStoryLoading(false);
    }
  }
}
