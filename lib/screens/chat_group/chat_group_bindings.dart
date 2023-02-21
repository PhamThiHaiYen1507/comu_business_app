import 'package:get/get.dart';

import 'chat_group_controller.dart';

class ChatGroupBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatGroupController());
  }
}
