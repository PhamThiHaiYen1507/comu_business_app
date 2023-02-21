import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:startup/routes/routes.dart';
import 'package:startup/utils/svg.dart';

import 'chat_group_controller.dart';

class GroupItem {
  final String avatar;
  final String name;
  final String lastMsg;

  const GroupItem(
      {required this.avatar, required this.name, required this.lastMsg});
}

const groups = [
  GroupItem(
    avatar: Picture.avatar,
    name: 'Đào Ngọc Nam',
    lastMsg:
        'Bạn giới thiệu cho mình thông tin dự án đang triển khai của bạn để mình tham khảo nhé!!!',
  ),
];

class ChatGroup extends StatelessWidget {
  const ChatGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatGroupController>(
      builder: (c) => Scaffold(
        appBar: AppBar(
          title: const Text('Nhóm chat'),
          centerTitle: true,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            onTap: () => Get.toNamed(Routes.chat),
            leading: Image.asset(Picture.avatar, fit: BoxFit.cover),
            title: Text(groups[index].name),
            subtitle: Text(
              groups[index].lastMsg,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemCount: groups.length,
        ),
      ),
    );
  }
}
