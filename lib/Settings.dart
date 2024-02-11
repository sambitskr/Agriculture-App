import 'package:agriculture_app/AppColors.dart';
import 'package:agriculture_app/Login.dart';
import 'package:agriculture_app/image_with_text.dart';
import 'package:agriculture_app/utils/settings_list.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          "Settings",
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Appearance',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const settingsList(
            tileName: 'Dark mode',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Your app',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const settingsList(
            tileName: 'Accessibility',
          ),
          const settingsList(
            tileName: 'Language',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Information',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const settingsList(
              tileName: 'About Us',
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const settingsList(
              tileName: 'Contact Us',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Login',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const settingsList(
            tileName: 'Add account',
          ),
          GestureDetector(
            onTap: () {
              LoginPage();
            },
            child: const settingsList(
              tileName: 'Logout',
            ),
          ),
        ],
      ),
    );
  }
}
