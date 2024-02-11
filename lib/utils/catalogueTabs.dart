import 'package:agriculture_app/image_with_text.dart';
import 'package:flutter/material.dart';

class CatalogueTabs extends StatelessWidget {
  const CatalogueTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          ImageWithOverlayText(
            imagePath: 'Images/Tractor.jpg',
            overlayText: 'Seeds',
          ),
          SizedBox(
            width: 15,
          ),
          ImageWithOverlayText(
            imagePath: 'Images/Tractor.jpg',
            overlayText: 'Seeds',
          ),
        ],
      ),
    );
  }
}
