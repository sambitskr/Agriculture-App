import 'package:agriculture_app/Homepage.dart';
import 'package:agriculture_app/NavigationBar.dart';
import 'package:agriculture_app/TopTrending.dart';
import 'package:agriculture_app/VideoPage.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavigatorBarPage(),
    );
  }
}
