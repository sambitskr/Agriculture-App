import 'package:agriculture_app/image_with_text.dart';
import 'package:flutter/material.dart';

class MarketplaceTilePage extends StatelessWidget {
  const MarketplaceTilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageWithOverlayTextSmall(
            imagePath: 'Images/Eldenring.png',
            width: 180,
            height: 200,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '₹799',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            'Plant Fertilizer 200g',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            'Barasat, WB',
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
