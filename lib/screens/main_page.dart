import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/app_bar.dart';
import 'package:instagram_app/widgets/bottom_bar.dart';
import 'package:instagram_app/widgets/posts.dart';
import 'package:instagram_app/widgets/story_avatars.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final Map<String, String> users = {
    'avatar2.jpg' : 'racoooon',
    'avatar5.jpg' : 'kitto_burrito',
    'avatar4.jpg' : 'cinnabon16',
    'avatar3.jpg' : 'the_breeze',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const InstagramAppBar(),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              //stories
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    children: [
                      const MyStoryAvatar(),
                      for (var entry in users.entries)
                        SubscribersStoryAvatar(
                          avatar: entry.key,
                          username: entry.value,
                        ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 0.7,
                width: MediaQuery.of(context).size.width,
                color: Colors.black12,
              ),
              //posts
              const Column(
                children: [
                  UserPost(
                    avatar: 'avatar4.jpg',
                    username: 'cinnabon16',
                    location: 'Kyiv, Ukraine',
                    photo: 'post2.jpg',
                    description: '1, 2 ... 22!',
                    likes: 367,
                    comments: 54,
                    time: 3,
                    timeMeasurement: 'hours',
                  ),
                  UserPost(
                    avatar: 'avatar5.jpg',
                    username: 'kitto_burrito',
                    location: 'Chernihiv, Ukraine',
                    photo: 'post1.jpg',
                    description: 'just napping',
                    likes: 127,
                    comments: 18,
                    time: 50,
                    timeMeasurement: 'minutes',
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: const InstagramNavBar(),
    );
  }
}
