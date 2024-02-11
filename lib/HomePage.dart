import 'package:agriculture_app/AppColors.dart';
import 'package:agriculture_app/utils/HiddenDrawer.dart';
import 'package:agriculture_app/utils/TrendingTabs.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {
            // SimpleHiddenDrawerController.of(context).toggle();
            SimpleHiddenDrawerController.of(context).toggle();
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                'Hi Sambit,',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Enjoy our services!',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.notifications,
              color: Colors.green[400],
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
            child: Column(
              children: [
                //Search Bar
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefix: Icon(Icons.search),
                        hintText: "Search Here..."),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                //Free Consultation
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.primaryColor),
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Free Consultation",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                    "Get free support from\n our customer service")
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.green,
                                  ),
                                  // padding: EdgeInsets.all(5),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "Call now",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 2,
                        ),

                        //clip art
                        Image.asset(
                          "Images/Consult.png",
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                //Top Trending
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Trending',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'See all',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Trendingtabs(
                  imagePath: 'Images/crops.jpg',
                  titlePath: 'Farmers Benefits of Crop Season',
                ),
                const Trendingtabs(
                  imagePath: 'Images/kashmiri.jpg',
                  titlePath: 'Are yields worth the cost?',
                ),
                const Trendingtabs(
                  imagePath: 'Images/Rural.jpg',
                  titlePath: 'Harvest Brings Boom to Areas',
                ),
                const Trendingtabs(
                  imagePath: 'Images/Landscape.jpg',
                  titlePath: ' Crop Brings Prosperity to Areas',
                ),
                const Trendingtabs(
                  imagePath: 'Images/Tractor.jpg',
                  titlePath: 'Tractor-Powered Triumph ',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
