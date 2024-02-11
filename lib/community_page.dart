import 'package:agriculture_app/AppColors.dart';
import 'package:agriculture_app/utils/discussions_page.dart';
import 'package:agriculture_app/utils/jobs_page.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(top: 8, left: 23, bottom: 8),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                child: IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    SimpleHiddenDrawerController.of(context).toggle();
                  },
                ),
              ),
            ),
          ),
          title: const Text(
            "Community",
            style: TextStyle(
                color: AppColors.textPrimaryDark,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 23, bottom: 8),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.accentColor.withOpacity(0.1),
                  ),
                  child: const Icon(
                    Icons.notifications,
                    color: AppColors.accentColor,
                  ),
                ),
              ),
            ),
          ],
          bottom: const TabBar(tabs: [
            Tab(
              text: 'Discussions',
            ),
            Tab(
              text: 'Jobs',
            )
          ]),
        ),
        body: TabBarView(children: [DiscussionsPage(), JobsPage()]),
      ),
    );
  }
}
