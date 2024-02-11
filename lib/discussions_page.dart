import 'package:agriculture_app/AppColors.dart';
import 'package:agriculture_app/image_with_text.dart';
import 'package:flutter/material.dart';

class DiscussionsPage extends StatelessWidget {
  DiscussionsPage({super.key});

  final List<Map<String, dynamic>> posts = [
    // -> this is the data of the discussions page
    {
      'avatarImage': 'assets/images/gol kapav.png',
      'userName': 'kapav',
      'time': '6h',
      'titleText':
          'Zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz',
      'mainImage': 'assets/images/3.jpg',
      'mainText': ''
    },
    {
      'avatarImage': 'assets/images/gol kapav.png',
      'userName': 'kapav',
      'time': '6h',
      'titleText': 'That is my dawg.',
      'mainImage': '',
      'mainText':
          'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.'
    },
    {
      'avatarImage': 'assets/images/dp_maybe.png',
      'userName': 'avigyan',
      'time': '5h',
      'titleText':
          'Zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz',
      'mainImage': 'assets/images/3.jpg',
      'mainText': ''
    },
    {
      'avatarImage': 'assets/images/gol kapav.png',
      'userName': 'kapav',
      'time': '6h',
      'titleText':
          'Zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz',
      'mainImage': 'assets/images/3.jpg',
      'mainText': ''
    },
    {
      'avatarImage': 'assets/images/gol kapav.png',
      'userName': 'kapav',
      'time': '6h',
      'titleText':
          'Zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz',
      'mainImage': 'assets/images/1.jpg',
      'mainText': ''
    },
    {
      'avatarImage': 'assets/images/gol kapav.png',
      'userName': 'kapav',
      'time': '6h',
      'titleText':
          'Zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz',
      'mainImage': 'assets/images/3.jpg',
      'mainText': ''
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: posts.length,
          itemBuilder: (BuildContext context, int index) {
            return PostTile(
              avatarImage: posts[index]['avatarImage'],
              userName: posts[index]['userName'],
              time: posts[index]['time'],
              titleText: posts[index]['titleText'],
              mainImage: posts[index]['mainImage'],
              mainText: posts[index]['mainText'],
            );
          },
        ),
      ),
    );
  }
}

class PostTile extends StatelessWidget {
  final String avatarImage;
  final String userName;
  final String time;
  final String titleText;
  final String mainImage;
  final String mainText;
  const PostTile({
    Key? key,
    required this.avatarImage,
    required this.userName,
    required this.time,
    required this.titleText,
    required this.mainImage,
    required this.mainText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 15,
                foregroundImage: AssetImage(avatarImage),
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                userName,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimaryDark),
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                time,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black45),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
                color: Colors.black38,
                iconSize: 20,
              )
            ],
          ),
          Text(
            titleText,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimaryDark),
            //softWrap: true,
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            // -> decides whether it is a text post or an image post
            child: (mainImage == '')
                ? Text(
                    mainText,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: AppColors.textPrimaryLight),
                    softWrap: true,
                  )
                : ImageWithOverlayText(
                    imagePath: mainImage,
                    containerWidthFactor: 1,
                    height: 400,
                  ),
          ),
          Row(
            children: [
              const IconButtons(
                  icon: Icons.messenger_outline_outlined, numbers: '121'),
              const SizedBox(
                width: 10,
              ),
              const IconButtons(
                  icon: Icons.favorite_border_rounded, numbers: '12'),
              const SizedBox(
                width: 10,
              ),
              const IconButtons(
                  icon: Icons.remove_red_eye_outlined, numbers: '738'),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.share_outlined),
                color: Colors.black38,
                iconSize: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            height: 1,
            thickness: 1,
          )
        ],
      ),
    );
  }
}

class IconButtons extends StatelessWidget {
  final IconData icon;
  final String numbers;
  const IconButtons({
    Key? key,
    required this.icon,
    this.numbers = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.black45,
            size: 20,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            numbers,
            style: const TextStyle(
                fontSize: 14,
                color: AppColors.textPrimaryLight,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
