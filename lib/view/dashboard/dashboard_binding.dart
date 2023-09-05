import 'package:get/get.dart';
import 'package:lvflutter/controller/dashboard_controller.dart';
import 'package:lvflutter/controller/home_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController());
    Get.put(HomeController());
  }
}
