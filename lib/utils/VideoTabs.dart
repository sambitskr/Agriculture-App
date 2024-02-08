import 'package:flutter/material.dart';

class VideoTabs extends StatelessWidget {
  const VideoTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(),
      child: Column(
        children: [
          //video preview
          Container(
            height: 195,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //video name and profile pic
          Row(
            children: [
              //profile pic
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 13,
              ),
              SizedBox(
                width: 10,
              ),
              //video caption
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'How to plant crops in 4k only in India',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  //account name, date, views
                  Row(
                    children: [
                      Text(
                        'Jaden Smith',
                        style: TextStyle(fontSize: 11),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '2 days ago',
                        style: TextStyle(fontSize: 11),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '12.k Views',
                        style: TextStyle(fontSize: 11),
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
