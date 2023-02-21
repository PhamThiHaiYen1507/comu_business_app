import 'package:get/get.dart';

import 'user_info_controller.dart';

class UserInfoBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserInfoController());
  }
}
