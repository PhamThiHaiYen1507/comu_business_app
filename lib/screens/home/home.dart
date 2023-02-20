import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:startup/utils/svg.dart';

import '../../widget/side_bar/side_bar.dart';
import 'home_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (c) => Scaffold(
        drawer: const Sidebar(),
        appBar: AppBar(
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
        ),
      ),
    );
  }
}
