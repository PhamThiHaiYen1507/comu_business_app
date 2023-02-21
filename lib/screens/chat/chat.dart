import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:startup/utils/app_colors.dart';
import 'package:startup/utils/svg.dart';
import 'package:startup/utils/text_styles.dart';
import 'package:startup/widget/app_avatar/app_avatar.dart';

import 'chat_controller.dart';

class ChatData {
  final String content;
  final String avatar;
  final String time;
  final String? image;
  final bool isUser;

  const ChatData(
      {required this.content,
      required this.avatar,
      required this.time,
      this.isUser = false,
      this.image});
}

const messages = [
  ChatData(
    content:
        'Bạn giới thiệu cho mình thông tin dự án đang triển khai của bạn để mình tham khảo nhé!!!',
    isUser: false,
    avatar: Picture.avatar,
    time: '10:36',
  ),
  ChatData(
    content: 'chào Nam rất vui được làm quen với bạn nha :D',
    isUser: true,
    avatar: Picture.avatar,
    time: '10:35',
  ),
  ChatData(
    content: 'Xin chào bạn! cho mình làm quen nha',
    isUser: false,
    avatar: Picture.avatar,
    time: '10:34',
  ),
];

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatController>(
      builder: (c) => Scaffold(
        appBar: AppBar(
          title: const Text('Đào Ngọc Nam'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                reverse: true,
                itemBuilder: (_, i) => _getChatBox(messages[i]),
                separatorBuilder: (_, i) => const SizedBox(height: 16),
                itemCount: messages.length,
              ),
            ),
            Card(
              surfaceTintColor: AppColors.primary,
              child: Container(
                margin: const EdgeInsets.all(8),
                height: 38,
                child: Row(children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.attach_file_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.image_outlined),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 8),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                width: 1,
                                color: AppColors.primary,
                              ))),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.send_rounded),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getChatBox(ChatData item) {
    if (item.isUser) {
      return Container(
        margin: const EdgeInsets.only(left: 50),
        alignment: Alignment.centerRight,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(item.content),
              Text(item.time, style: TextDefine.P4_R)
            ],
          ),
        ),
      );
    }
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(right: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppAvatar(asset: item.avatar),
          const SizedBox(width: 8),
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(item.content),
                  Text(item.time, style: TextDefine.P4_R)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
