import 'package:agriculture_app/Homepage.dart';
import 'package:agriculture_app/TopTrending.dart';
import 'package:agriculture_app/VideoPage.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class NavigatorBarPage extends StatefulWidget {
  const NavigatorBarPage({super.key});

  @override
  State<NavigatorBarPage> createState() => _NavigatorBarPageState();
}

class _NavigatorBarPageState extends State<NavigatorBarPage> {
  int selectedindex = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final screens = [
    MyHomePage(),
    TopTrendingPage(),
    VideoPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedindex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 60.0,
        key: _bottomNavigationKey,
        index: 0,
        items: [
          Icon(Icons.home_filled),
          Icon(Icons.category_rounded),
          Icon(Icons.shopping_bag_rounded),
        ],
        backgroundColor: Colors.transparent,
        color: Colors.green.shade200,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            selectedindex = index;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
