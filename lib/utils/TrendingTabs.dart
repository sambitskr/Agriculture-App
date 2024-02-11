import 'package:agriculture_app/AppColors.dart';
import 'package:flutter/material.dart';

class Trendingtabs extends StatelessWidget {
  final String imagePath;
  final String titlePath;
  const Trendingtabs(
      {super.key, required this.imagePath, required this.titlePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.primaryColor.withOpacity(0.5)),
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 13,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titlePath,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.remove_red_eye_rounded,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '126,000 views',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.favorite,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '47,875 likes',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
