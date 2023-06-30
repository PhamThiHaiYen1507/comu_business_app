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
    avatar: Picture.anh,
    name: 'Phạm Nhật Vượng',
    lastMsg:
        'Bạn giới thiệu cho mình thông tin dự án đang triển khai của bạn để mình tham khảo nhé!!!',
  ),
  GroupItem(
    avatar: Picture.chan_dung,
    name: 'Lê Thị Phương Ling',
    lastMsg: 'Hi! Chào Linh nha',
  ),
  GroupItem(
    avatar: Picture.chan_dung,
    name: 'Phạm Thị Hải Yến',
    lastMsg: 'Bạn ơi, có thể cho mình hỏi thêm về dự án bên mình không',
  ),
  GroupItem(
    avatar: Picture.chan_dung,
    name: 'Phạm Hồng Hiếu',
    lastMsg:
        'Bạn giới thiệu cho mình thông tin dự án đang triển khai của bạn để mình tham khảo nhé!!!',
  ),
  GroupItem(
    avatar: Picture.anh,
    name: 'Tô Hoàng',
    lastMsg: 'Hello',
  ),
  GroupItem(
    avatar: Picture.anh,
    name: 'Bùi Vũ',
    lastMsg: 'Dự án của chúng tôi đã start 3 năm trước',
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
            leading: SizedBox(
                height: 70,
                width: 70,
                child: Image.asset(groups[index].avatar, fit: BoxFit.cover)),
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
