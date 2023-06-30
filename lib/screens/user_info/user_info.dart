import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:startup/utils/svg.dart';
import 'package:startup/utils/text_styles.dart';
import 'package:startup/widget/app_avatar/app_avatar.dart';

import 'user_info_controller.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserInfoController>(
      builder: (c) => ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Center(child: AppAvatar(asset: Picture.anh, size: 120)),
          const Center(
              child: Text(
            'Phạm Nhật Vượng',
            style: TextDefine.H1_B,
          )),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Email'),
              Text('nhatvuongpham@gmail.com', style: TextDefine.P1_M),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Điện thoại liên hệ'),
              Text('0345712348', style: TextDefine.P1_M),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Giới tính'),
              Text('Nam', style: TextDefine.P1_M),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Ngày sinh'),
              Text('15/07/1980', style: TextDefine.P1_M),
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: const [
          //     Text('Địa chỉ liên hệ'),
          //     Text('', style: TextDefine.P1_M),
          //   ],
          // ),
        ],
      ),
    );
  }
}
