import 'package:agriculture_app/AppColors.dart';
import 'package:agriculture_app/image_with_text.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class CategoryPage extends StatelessWidget {
  CategoryPage({super.key});

  final List<Map<String, dynamic>> categories = [
    {
      'categoryImage': 'Images/fields.jpg',
      'categoryName': 'Crop Management',
    },
    {
      'categoryImage': 'Images/Tractor.jpg',
      'categoryName': 'Technology',
    },
    {
      'categoryImage': 'Images/Landscape.jpg',
      'categoryName': 'Climates',
    },
    {
      'categoryImage': 'Images/vegetables.jpg',
      'categoryName': 'Vegetables',
    },
    {
      'categoryImage': 'Images/straw.jpg',
      'categoryName': 'Agribuissness',
    },
    {
      'categoryImage': 'Images/cows.jpg',
      'categoryName': 'Emerging issues',
    },
    {
      'categoryImage': 'Images/wheat.jpg',
      'categoryName': 'Farm safety',
    },
    {
      'categoryImage': 'Images/agriculture.jpg',
      'categoryName': 'Rural Development',
    },
  ];

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
            onTap: () {
              SimpleHiddenDrawerController.of(context).toggle();
            },
            child: Container(
              decoration: BoxDecoration(),
              child: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (BuildContext context, int index) {
            return CategoryGridview(
                categoryImage: categories[index]['categoryImage'],
                categoryName: categories[index]['categoryName']);
          },
        ),
      ),
    );
  }
}

class CategoryGridview extends StatelessWidget {
  final String categoryImage;
  final String categoryName;
  const CategoryGridview({
    Key? key,
    required this.categoryImage,
    required this.categoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageWithOverlayText(
      imagePath: categoryImage,
      overlayText: categoryName,
    );
  }
}
