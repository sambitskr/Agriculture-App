import 'package:flutter/material.dart';

class ImageWithOverlayText extends StatelessWidget {
  final String imagePath;
  final String overlayText;
  final double height;
  final double leftPosition;
  final double bottomPosition;
  final Color textColor;
  final double textSize;
  final FontWeight textWeight;
  final double borderRadius;
  final double
      containerWidthFactor; // Factor of screen width for container width

  const ImageWithOverlayText({
    Key? key,
    required this.imagePath,
    this.overlayText = '',
    this.height = 200,
    this.leftPosition = 10,
    this.bottomPosition = 10,
    this.textColor = Colors.white,
    this.textSize = 15,
    this.textWeight = FontWeight.w400,
    this.borderRadius = 10,
    this.containerWidthFactor =
        0.85 / 2, // Default factor is 80% of screen width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerWidth = screenWidth * containerWidthFactor;

    return Container(
      width: containerWidth,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
              left: leftPosition,
              bottom: bottomPosition,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black38,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  child: Text(
                    overlayText,
                    style: TextStyle(
                      color: textColor,
                      fontSize: textSize,
                      fontWeight: textWeight,
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

class ImageWithOverlayTextSmall extends StatelessWidget {
  final String imagePath;
  final String overlayText;
  final double width;
  final double height;
  final double leftPosition;
  final double bottomPosition;
  final Color textColor;
  final double textSize;
  final FontWeight textWeight;
  final double borderRadius;

  const ImageWithOverlayTextSmall({
    Key? key,
    required this.imagePath,
    this.overlayText = '',
    this.width = 300,
    this.height = 200,
    this.leftPosition = 10,
    this.bottomPosition = 10,
    this.textColor = Colors.white,
    this.textSize = 20,
    this.textWeight = FontWeight.bold,
    this.borderRadius = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: leftPosition,
            bottom: bottomPosition,
            child: Text(
              overlayText,
              style: TextStyle(
                color: textColor,
                fontSize: textSize,
                fontWeight: textWeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
