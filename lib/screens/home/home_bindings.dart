import 'package:get/get.dart';
import 'package:startup/screens/chat_group/chat_group_controller.dart';
import 'package:startup/screens/investors/investors_controller.dart';

import '../home_page/home_page_controller.dart';
import '../user_info/user_info_controller.dart';
import 'home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => InvestorsController());
    Get.lazyPut(() => HomePageController());
    Get.lazyPut(() => ChatGroupController());
    Get.lazyPut(() => UserInfoController());
  }
}
