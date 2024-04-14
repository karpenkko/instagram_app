import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../theme/theme_provider.dart';

class PostDescription extends StatelessWidget {
  final String username;
  final String description;
  final int likes;
  final int comments;
  final int time;
  final String timeMeasurement;

  const PostDescription({
    super.key,
    required this.username,
    required this.description,
    required this.likes,
    required this.comments,
    required this.time,
    required this.timeMeasurement,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Provider.of<ThemeProvider>(context).isDarkMode;

    return Padding(
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
            style: TextStyle(
              color: isDarkMode ? Colors.white60 : Colors.grey.shade800,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '$time $timeMeasurement ago',
            style: TextStyle(
              fontSize: 12,
              color: isDarkMode ? Colors.white60 : Colors.grey.shade800,
            ),
          ),
        ],
      ),
    );
  }
}
