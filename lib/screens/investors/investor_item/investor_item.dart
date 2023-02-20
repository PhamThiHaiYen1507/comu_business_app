import 'package:flutter/material.dart';
import 'package:startup/utils/app_colors.dart';
import 'package:startup/utils/svg.dart';
import 'package:startup/utils/text_styles.dart';

class InvestorItem extends StatelessWidget {
  const InvestorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(0),
      shadowColor: Colors.black26,
      surfaceTintColor: AppColors.primary.withOpacity(0.2),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    width: 60,
                    height: 78,
                    child: Image.asset(
                      Picture.avatar,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text.rich(TextSpan(children: [
                        TextSpan(text: 'Họ tên: '),
                        TextSpan(text: 'Đào Ngọc Nam', style: TextDefine.T2_B),
                      ])),
                      Text.rich(TextSpan(children: [
                        TextSpan(text: 'Chuyên ngành: '),
                        TextSpan(
                            text: 'Công nghệ thông tin',
                            style: TextDefine.P2_B),
                      ])),
                      Text.rich(TextSpan(children: [
                        TextSpan(text: 'Kinh nghiệm: '),
                        TextSpan(
                            text: '10 năm kinh nghiệm', style: TextDefine.P2_B),
                      ])),
                      Text.rich(
                        TextSpan(children: [
                          TextSpan(text: 'Giới thiệu: '),
                          TextSpan(
                              text:
                                  'Đẹp giai được nhiều em gái theo đuổi, có tỉ năm kinh nghiệm tình trường :v',
                              style: TextDefine.P2_B),
                        ]),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(children: [
              IconButton(
                icon: const Icon(Icons.chat),
                onPressed: () {},
              )
            ]),
          ),
        ],
      ),
    );
  }
}
