import 'package:get/get.dart';

import 'investors_controller.dart';

class InvestorsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InvestorsController());
  }
}
