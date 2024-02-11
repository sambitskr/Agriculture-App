import 'package:agriculture_app/AppColors.dart';
import 'package:agriculture_app/image_with_text.dart';
import 'package:agriculture_app/utils/catalogueTabs.dart';
import 'package:flutter/material.dart';

class CataloguePage extends StatelessWidget {
  const CataloguePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(top: 8, left: 23, bottom: 8),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black.withOpacity(0.05),
              ),
              child: const Icon(Icons.menu),
            ),
          ),
        ),
        title: const Text(
          "Categories",
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23, vertical: 20),
          child: Center(
            child: Column(children: [
              CatalogueTabs(
                catalogueName: 'Crop Management',
                imagepath: 'Images/fields.jpg',
              ),
              CatalogueTabs(
                catalogueName: 'Technology',
                imagepath: 'Images/Tractor.jpg',
              ),
              CatalogueTabs(
                catalogueName: 'Climate',
                imagepath: 'Images/Landscape.jpg',
              ),
              CatalogueTabs(
                catalogueName: 'Vegetables',
                imagepath: 'Images/vegetables.jpg',
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
