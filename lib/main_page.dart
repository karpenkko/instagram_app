import 'package:flutter/material.dart';
import 'package:instagram_app/posts.dart';
import 'package:instagram_app/story_avatars.dart';


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
        appBar: AppBar(
            title: Image.asset(
              'assets/logo.png',
              height: 42,
            ),
          actions: [
             Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                        Icons.favorite_border,
                        color:Colors.black,
                        size: 26,
                    ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/icons/messenger_icon.png',
                    height: 30,
                    ),
                ),
              ],
            )
          ],
        ),
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
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/home.png',
                height: 24,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/search.png',
                height: 24,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/new.png',
                height: 24,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/reels.png',
                height: 24,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 24,
                height: 24,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/avatars/avatar1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              label: '',
            ),
          ]
        ),
    );
  }
}
