import 'package:agriculture_app/image_with_text.dart';
import 'package:flutter/material.dart';

class CatalogueTabs extends StatelessWidget {
  final String imagepath;
  final String catalogueName;
  const CatalogueTabs(
      {super.key, required this.imagepath, required this.catalogueName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          ImageWithOverlayText(
            imagePath: imagepath,
            overlayText: catalogueName,
          ),
          SizedBox(
            width: 15,
          ),
          ImageWithOverlayText(
            imagePath: imagepath,
            overlayText: catalogueName,
          ),
        ],
      ),
    );
  }
}
