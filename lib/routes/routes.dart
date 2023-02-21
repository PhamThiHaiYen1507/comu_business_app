import 'package:get/get.dart';
import 'package:startup/screens/chat/chat.dart';
import 'package:startup/screens/chat/chat_bindings.dart';

import '../screens/home/home.dart';
import '../screens/home/home_bindings.dart';
import '../screens/investors/investors.dart';
import '../screens/investors/investors_bindings.dart';

class Routes {
  static const String home = '/home';
  static const String investors = '/investors';
  static const String chat = '/chat';
}

class AppNavigate {
  static final List<GetPage<dynamic>> routes = [
    GetPage(
      name: Routes.home,
      page: () => const Home(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: Routes.investors,
      page: () => const Investors(),
      binding: InvestorsBindings(),
    ),
    GetPage(
      name: Routes.chat,
      page: () => const Chat(),
      binding: ChatBindings(),
    ),
  ];
}
