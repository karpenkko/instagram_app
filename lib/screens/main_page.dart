import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/app_bar.dart';
import 'package:instagram_app/widgets/bottom_bar.dart';
import 'package:instagram_app/widgets/story_avatars.dart';
import 'package:http/http.dart' as http;

import '../widgets/post/posts.dart';
import '../widgets/skeleton.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final Map<String, String> users = {
    'avatar2.jpg': 'racoooon',
    'avatar5.jpg': 'kitto_burrito',
    'avatar4.jpg': 'cinnabon16',
    'avatar3.jpg': 'the_breeze',
  };

  List<String> imgUrl = [];
  bool showImg = false;

  final url =
      'https://api.unsplash.com/search/photos?per_page=6&query=animals&client_id=jZtQkpT_AlwETlSBDUtUvEgYVVvbyqh3NYiW-EPiNLU';

  void fetchData() {
    http.get(Uri.parse(url)).then((response) {
      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        parseJson(jsonData);
      } else {
        print('Failed to fetch data. Status code: ${response.statusCode}');
      }
    }).catchError((e) {
      print('Error fetching data: $e');
    });
  }

  void parseJson(Map<String, dynamic> jsonData) {
    imgUrl.clear();
    final List<dynamic> results = jsonData['results'];

    for (final item in results) {
      imgUrl.add(item['urls']['regular']);
    }
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        showImg = true;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const InstagramAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: !showImg
              ? [const Skeleton()]
              : [
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Row(
                        children: [
                          const MyStoryAvatar(),
                          for (int i = 0; i < users.length; i++)
                            SubscribersStoryAvatar(
                              avatar: imgUrl[i],
                              username: users.values.elementAt(i),
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
                  Column(
                    children: [
                      UserPost(
                        avatar: imgUrl.elementAt(2),
                        username: 'cinnabon16',
                        location: 'Kyiv, Ukraine',
                        photo: imgUrl.elementAt(4),
                        description: '1, 2 ... 22!',
                        likes: 367,
                        comments: 54,
                        time: 3,
                        timeMeasurement: 'hours',
                      ),
                      UserPost(
                        avatar: imgUrl.elementAt(1),
                        username: 'kitto_burrito',
                        location: 'Chernihiv, Ukraine',
                        photo: imgUrl.elementAt(5),
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
