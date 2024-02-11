import 'package:agriculture_app/image_with_text.dart';
import 'package:flutter/material.dart';

class BrowsebyCategoryTiles extends StatelessWidget {
  const BrowsebyCategoryTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: ImageWithOverlayTextSmall(
        imagePath: 'Images/Eldenring.png',
        overlayText: 'Seeds',
        width: 180,
        height: 200,
      ),
    );
  }
}
