import 'package:get/get.dart';
import 'package:lvflutter/model/ad_profile.dart';
import 'package:lvflutter/service/remote_service/remote_profile_service.dart';
import 'dart:convert';

class ProfileController extends GetxController {
  static ProfileController instance = Get.find();
  RxList<AdProfile> profileList = List<AdProfile>.empty(growable: true).obs;
  RxBool isProfileLoading = false.obs;

  @override
  void onInit() {
    getAdProfiles();

    super.onInit();
  }

  void getAdProfiles() async {
    try {
      print('test');
      isProfileLoading(true);
      var result = await RemoteProfileService().get();
      print(result);
      if (result != null) {
        profileList.assignAll(AdProfileListFromJson(json.encode(result)));
      }
    } finally {
      // print(ProfileList.first.image);
      isProfileLoading(false);
    }
  }
}
