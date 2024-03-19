import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/post_description.dart';
import 'package:instagram_app/widgets/post_header.dart';
import 'package:instagram_app/widgets/post_interaction.dart';
import 'package:instagram_app/widgets/post_photo.dart';

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
         PostHeader(
          avatar: avatar,
          username: username,
          location: location,
        ),
        PostPhoto(
          photo: photo,
        ),
        const PostInteraction(),
        PostDescription(
          username: username,
          description: description,
          likes: likes,
          comments: comments,
          time: time,
          timeMeasurement: timeMeasurement,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}