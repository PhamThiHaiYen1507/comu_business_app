import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:startup/routes/routes.dart';
import 'package:startup/utils/app_colors.dart';
import 'package:startup/utils/svg.dart';
import 'package:startup/utils/text_styles.dart';
import 'package:startup/widget/app_avatar/app_avatar.dart';

import 'home_page_controller.dart';

class ItemInfo {
  final String userCreatedAvatar;
  final String userCreated;
  final String projectLead;
  final String memberDecs;
  final String exp;
  final String projectInfo;
  final String companionCriteria;
  final String email;
  final String background;

  const ItemInfo({
    required this.userCreatedAvatar,
    required this.userCreated,
    required this.projectLead,
    required this.memberDecs,
    required this.exp,
    required this.projectInfo,
    required this.companionCriteria,
    required this.email,
    required this.background,
  });
}

const List<ItemInfo> items = [
  ItemInfo(
    userCreatedAvatar: Picture.anh,
    userCreated: 'Phạm Nhật Vượng',
    projectLead: 'Phạm Nhật Vượng',
    memberDecs: 'Gồm những thành viên gạo cội về lĩnh vực công nghệ thông tin',
    exp: 'Có nhiều kinh nghiệm trong lĩnh vực chứng khoán',
    projectInfo: '...',
    companionCriteria: '...',
    email: '...',
    background: Picture.image_background_1,
  ),
  ItemInfo(
    userCreatedAvatar: Picture.chan_dung,
    userCreated: 'Phạm Thị Hải Yến',
    projectLead: 'Phạm Thị Hải Yến',
    memberDecs: 'Gồm những thành viên gạo cội về lĩnh vực giáo dục',
    exp: 'Có nhiều kinh nghiệm trong lĩnh vực giáo dục',
    projectInfo: '...',
    companionCriteria: '...',
    email: '...',
    background: Picture.image_background_1,
  ),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
      builder: (c) => Scaffold(
        body: ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: items.length,
          itemBuilder: (_, i) {
            final item = items[i];
            return Card(
              elevation: 4,
              surfaceTintColor: AppColors.primary,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        AppAvatar(asset: item.userCreatedAvatar),
                        const SizedBox(width: 16),
                        Text(item.userCreated, style: TextDefine.P1_B)
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Row(children: [
                            IconButton(
                              icon: const Icon(Icons.chat),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(Icons.call_rounded),
                              onPressed: () {},
                            ),
                          ]),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text.rich(TextSpan(children: [
                                  const TextSpan(
                                      text: 'Người đứng đầu dự án: '),
                                  TextSpan(
                                      text: item.projectLead,
                                      style: TextDefine.T2_B),
                                ])),
                                Text.rich(TextSpan(children: [
                                  const TextSpan(text: 'Đội ngũ: '),
                                  TextSpan(
                                      text: item.memberDecs,
                                      style: TextDefine.P2_B),
                                ])),
                                Text.rich(TextSpan(children: [
                                  const TextSpan(text: 'Kinh nghiệm: '),
                                  TextSpan(
                                      text: item.exp, style: TextDefine.P2_B),
                                ])),
                                Text.rich(
                                  TextSpan(children: [
                                    const TextSpan(text: 'Thông tin dự án: '),
                                    TextSpan(
                                        text: item.projectInfo,
                                        style: TextDefine.P2_B),
                                  ]),
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text.rich(
                                  TextSpan(children: [
                                    const TextSpan(
                                        text: 'Tiêu chí tìm người đồng hành: '),
                                    TextSpan(
                                        text: item.companionCriteria,
                                        style: TextDefine.P2_B),
                                  ]),
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text.rich(
                                  TextSpan(children: [
                                    const TextSpan(text: 'Email: '),
                                    TextSpan(
                                        text: item.email,
                                        style: TextDefine.P2_B),
                                  ]),
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          AspectRatio(
                            aspectRatio: 1.7,
                            child: Image.asset(
                              Picture.image_background_1,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (_, i) => const SizedBox(height: 16),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => Get.toNamed(Routes.chat_group),
            child: const Icon(Icons.chat)),
      ),
    );
  }
}
