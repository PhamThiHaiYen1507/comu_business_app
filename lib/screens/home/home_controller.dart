import 'package:get/get.dart';
import 'package:startup/routes/routes.dart';

class HomeController extends GetxController {
  late int selectedIndex;

  @override
  void onInit() {
    selectedIndex = 0;
    super.onInit();
  }

  void onChangedSelected(int index) {
    if (index != 2) {
      selectedIndex = index;
      update();
    } else {
      Get.toNamed(Routes.chat);
    }
  }
}
