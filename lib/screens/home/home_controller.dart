import 'package:get/get.dart';

class HomeController extends GetxController {
  late int selectedIndex;

  @override
  void onInit() {
    selectedIndex = 0;
    super.onInit();
  }

  void onChangedSelected(int index) {
    selectedIndex = index;
    update();
  }
}
