import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  final String avatar;
  final String username;
  final String location;

  const PostHeader({
    super.key,
    required this.avatar,
    required this.username,
    required this.location
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(children: [
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
                  image: NetworkImage(avatar),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 8),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
        ]),
        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            child: const Icon(
              Icons.more_horiz,
              size: 22,
            ),
          ),
        ),
      ]),
    );
  }
}
