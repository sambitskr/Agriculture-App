import 'package:flutter/material.dart';

class TopTrendingPage extends StatefulWidget {
  const TopTrendingPage({super.key});

  @override
  State<TopTrendingPage> createState() => _TopTrendingPageState();
}

class _TopTrendingPageState extends State<TopTrendingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          "Top Trending",
          style: TextStyle(color: Colors.black),
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
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Text(
                  'The climate coditions of the country yields poor crops in the regions of Haryana, Punjab, Rajasthan.',
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 195,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
