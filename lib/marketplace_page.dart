import 'package:agriculture_app/AppColors.dart';
import 'package:agriculture_app/image_with_text.dart';
import 'package:agriculture_app/utils/BrowsebyCategory.dart';
import 'package:agriculture_app/utils/MarketplaceTiles.dart';
import 'package:agriculture_app/utils/MostPopular.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class MarketplacePage extends StatelessWidget {
  const MarketplacePage({super.key});

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width - 46;
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
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black.withOpacity(0.05),
              ),
              child: const Icon(Icons.menu),
            ),
          ),
        ),
        title: const Text(
          "Marketplace",
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
                  Icons.shopping_bag_rounded,
                  color: AppColors.accentColor,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: (size / 5) * 3,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primaryColor,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Create a new listing',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: (size / 5) * 1,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primaryColor,
                      ),
                      child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Icon(
                            Icons.search_rounded,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const Text(
                    'Personalized picks for you',
                    style: TextStyle(
                        color: AppColors.textPrimaryDark,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.accentColor.withOpacity(0.2)),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      child: Text(
                        'See All',
                        style: TextStyle(
                            color: AppColors.accentColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MarketplaceTilePage(),
                    MarketplaceTilePage(),
                    MarketplaceTilePage(),
                    MarketplaceTilePage(),
                    MarketplaceTilePage(),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const Text(
                    'Most Popular deals',
                    style: TextStyle(
                        color: AppColors.textPrimaryDark,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.accentColor.withOpacity(0.2)),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      child: Text(
                        'See All',
                        style: TextStyle(
                            color: AppColors.accentColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MostPopular(),
                    MostPopular(),
                    MostPopular(),
                    MostPopular(),
                    MostPopular(),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Browse by Category',
                style: TextStyle(
                    color: AppColors.textPrimaryDark,
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BrowsebyCategoryTiles(),
                    BrowsebyCategoryTiles(),
                    BrowsebyCategoryTiles(),
                    BrowsebyCategoryTiles(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
