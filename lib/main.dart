import 'package:agriculture_app/AppColors.dart';
import 'package:agriculture_app/Homepage.dart';
import 'package:agriculture_app/Login.dart';
import 'package:agriculture_app/NavigationBar.dart';
import 'package:agriculture_app/TopTrending.dart';
import 'package:agriculture_app/VideoPage.dart';
import 'package:agriculture_app/community_page.dart';
import 'package:agriculture_app/marketplace_page.dart';
import 'package:agriculture_app/Settings.dart';
import 'package:agriculture_app/utils/HiddenDrawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agrico',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
