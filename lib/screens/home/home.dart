import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:startup/screens/chat_group/chat_group.dart';
import 'package:startup/screens/investors/investors.dart';
import 'package:startup/utils/svg.dart';

import '../../widget/side_bar/side_bar.dart';
import '../home_page/home_page.dart';
import '../user_info/user_info.dart';
import 'home_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (c) => Scaffold(
        drawer: const Sidebar(),
        appBar: c.selectedIndex != 2
            ? AppBar(
                leading: Builder(
                  builder: (context) => IconButton(
                    icon: Image.asset(
                      Picture.logo_dark,
                      width: 32,
                      height: 32,
                    ),
                    onPressed: Scaffold.of(context).openDrawer,
                  ),
                ),
                title: const Text('Busin"chat'),
                actions: [
                  IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ],
              )
            : null,
        body: IndexedStack(index: c.selectedIndex, children: const [
          HomePage(),
          Investors(showAppbar: false),
          ChatGroup(),
          UserInfo(),
        ]),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: c.onChangedSelected,
          selectedIndex: c.selectedIndex,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Trang chủ',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.engineering),
              icon: Icon(Icons.engineering_outlined),
              label: 'CG',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.chat),
              icon: Icon(Icons.chat_outlined),
              label: 'Chat',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.person),
              icon: Icon(Icons.person_outline),
              label: 'Tôi',
            ),
          ],
        ),
      ),
    );
  }
}
