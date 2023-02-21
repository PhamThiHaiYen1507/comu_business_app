import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:startup/screens/investors/investor_item/investor_item.dart';
import 'package:startup/utils/app_colors.dart';

import 'investors_controller.dart';

class Investors extends StatelessWidget {
  final bool showAppbar;
  const Investors({super.key, this.showAppbar = true});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<InvestorsController>(
      builder: (c) => Scaffold(
        appBar: showAppbar ? AppBar() : null,
        body: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              const TabBar(
                indicatorColor: AppColors.primary,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black26,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 16),
                tabs: [
                  Tab(text: 'Nhà đầu tư'),
                  Tab(text: 'Nhà phát triển'),
                ],
              ),
              Expanded(
                child: TabBarView(children: [
                  ListView.separated(
                    padding: const EdgeInsets.all(8),
                    itemCount: 10,
                    itemBuilder: (_, i) => const InvestorItem(),
                    separatorBuilder: (_, i) => const SizedBox(height: 16),
                  ),
                  ListView.separated(
                    padding: const EdgeInsets.all(8),
                    itemCount: 10,
                    itemBuilder: (_, i) => const InvestorItem(),
                    separatorBuilder: (_, i) => const SizedBox(height: 16),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
