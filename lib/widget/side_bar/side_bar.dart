import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:startup/routes/routes.dart';

import '../../utils/app_colors.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: AppColors.primary),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Danh sách startup'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Danh sách nhà đầu tư và phát triển'),
            onTap: () => Get.toNamed(Routes.investors),
          ),
        ],
      ),
    );
  }
}
