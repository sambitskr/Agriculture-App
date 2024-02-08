import 'package:flutter/material.dart';
import 'package:nodeit/constants.dart';
import 'package:nodeit/image_with_text.dart';

class MarketplacePage extends StatelessWidget {
  const MarketplacePage({super.key});

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
          "Marketplace",
          style: TextStyle(
              color: AppColors.textPrimary,
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
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primaryColor,
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 90),
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
                        color: AppColors.textPrimary,
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
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageWithOverlayTextSmall(
                            imagePath: 'assets/images/3.jpg',
                            width: 180,
                            height: 200,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '₹799',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Plant Fertilizer 200g',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Barasat, WB',
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageWithOverlayTextSmall(
                            imagePath: 'assets/images/3.jpg',
                            width: 180,
                            height: 200,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '₹799',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Plant Fertilizer 200g',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Barasat, WB',
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageWithOverlayTextSmall(
                            imagePath: 'assets/images/3.jpg',
                            width: 180,
                            height: 200,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '₹799',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Plant Fertilizer 200g',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Barasat, WB',
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageWithOverlayTextSmall(
                            imagePath: 'assets/images/3.jpg',
                            width: 180,
                            height: 200,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '₹799',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Plant Fertilizer 200g',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Barasat, WB',
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageWithOverlayTextSmall(
                            imagePath: 'assets/images/3.jpg',
                            width: 180,
                            height: 200,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '₹799',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Plant Fertilizer 200g',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Barasat, WB',
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
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
                        color: AppColors.textPrimary,
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
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageWithOverlayTextSmall(
                            imagePath: 'assets/images/3.jpg',
                            overlayText: '⚡',
                            width: 180,
                            height: 200,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '₹799',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Plant Fertilizer 200g',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Barasat, WB',
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageWithOverlayTextSmall(
                            imagePath: 'assets/images/3.jpg',
                            overlayText: '⚡',
                            width: 180,
                            height: 200,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '₹799',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Plant Fertilizer 200g',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Barasat, WB',
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageWithOverlayTextSmall(
                            imagePath: 'assets/images/3.jpg',
                            overlayText: '⚡',
                            width: 180,
                            height: 200,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '₹799',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Plant Fertilizer 200g',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Barasat, WB',
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageWithOverlayTextSmall(
                            imagePath: 'assets/images/3.jpg',
                            overlayText: '⚡',
                            width: 180,
                            height: 200,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '₹799',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Plant Fertilizer 200g',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Barasat, WB',
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageWithOverlayTextSmall(
                            imagePath: 'assets/images/3.jpg',
                            overlayText: '⚡',
                            width: 180,
                            height: 200,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '₹799',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Plant Fertilizer 200g',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Barasat, WB',
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Browse by Category',
                style: TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: ImageWithOverlayTextSmall(
                        imagePath: 'assets/images/3.jpg',
                        overlayText: 'Seeds',
                        width: 180,
                        height: 200,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: ImageWithOverlayTextSmall(
                        imagePath: 'assets/images/3.jpg',
                        overlayText: 'Seedlings',
                        width: 180,
                        height: 200,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: ImageWithOverlayTextSmall(
                        imagePath: 'assets/images/3.jpg',
                        overlayText: 'Machinery',
                        width: 180,
                        height: 200,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: ImageWithOverlayTextSmall(
                        imagePath: 'assets/images/3.jpg',
                        overlayText: 'Fertilizers',
                        width: 180,
                        height: 200,
                      ),
                    ),
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
