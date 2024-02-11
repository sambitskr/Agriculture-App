import 'package:agriculture_app/HomePage.dart';
import 'package:agriculture_app/TopTrending.dart';
import 'package:agriculture_app/marketplace_page.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawerPage extends StatefulWidget {
  const HiddenDrawerPage({super.key});

  @override
  State<HiddenDrawerPage> createState() => _HiddenDrawerPageState();
}

class _HiddenDrawerPageState extends State<HiddenDrawerPage> {
  late SimpleHiddenDrawerController controller;

  List<ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Home',
          baseStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          selectedStyle: TextStyle(),
        ),
        const MyHomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'MarketPlace',
          baseStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          selectedStyle: TextStyle(),
        ),
        const MarketplacePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Top Trending',
          baseStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          selectedStyle: TextStyle(),
        ),
        TopTrendingPage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      disableAppBarDefault: true,
      backgroundColorMenu: Color.fromRGBO(176, 217, 177, 1),
      screens: _pages,
      initPositionSelected: 0,
    );
  }
}
