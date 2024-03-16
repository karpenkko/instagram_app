import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String avatar;
  final String username;
  final String location;
  final String photo;
  final String description;
  final int likes;
  final int comments;
  final int time;
  final String timeMeasurement;


  const UserPost({
    super.key,
    required this.avatar,
    required this.username,
    required this.location,
    required this.photo,
    required this.description,
    required this.likes,
    required this.comments,
    required this.time,
    required this.timeMeasurement
  });

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        //head of post
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 34,
                      height: 34,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/gradient.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 31,
                      height: 31,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 1.5,
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/avatars/$avatar'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 8),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        username,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          height: 1.2,
                        ),
                      ),
                      Text(
                        location,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          height: 1.2,
                        ),
                      ),
                    ]
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: const Icon(
                      Icons.more_horiz,
                      size: 22,
                    ),
                  ),
                ),
              ]
          ),
        ),
        //photo
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: Image.asset(
            'assets/$photo',
            fit: BoxFit.cover,
          ),
        ),
        //actions with post
        Row(
          children: [
            SizedBox(
              width: 42,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color:Colors.black,
                  size: 26,
                ),
              ),
            ),
            SizedBox(
              width: 42,
              child: IconButton(
                onPressed: () {},
                icon: Image.asset('assets/icons/comments.png',
                  height: 24,
                ),
              ),
            ),
            SizedBox(
              width: 42,
              child: IconButton(
                onPressed: () {},
                icon: Image.asset('assets/icons/sent.png',
                  height: 24,
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/icons/saved.png',
                    height: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
         //description
         Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$likes likes',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    Text(
                      username,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(description),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  'View all $comments comments',
                  style: const TextStyle(
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  '$time $timeMeasurement ago',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}