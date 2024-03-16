import 'package:flutter/material.dart';

class SubscribersStoryAvatar extends StatelessWidget {
  final String avatar;
  final String username;

  const SubscribersStoryAvatar({
    super.key,
    required this.avatar,
    required this.username,
  });

  @override
  Widget build(BuildContext context){
    return Container(
      // padding: const EdgeInsets.only(left: 10, right: 10),
      margin: const EdgeInsets.only(right: 5, bottom: 5),
      // color: Colors.amber[600],
      width: 95,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/gradient.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 85,
                height: 85,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/avatars/$avatar'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            username,
            style: const TextStyle(fontSize: 12),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}




class MyStoryAvatar extends StatelessWidget {
  const MyStoryAvatar({super.key});


  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.only(top: 3),
      margin: const EdgeInsets.only(right: 5, bottom: 5),
      // color: Colors.amber[600],
      width: 93,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 83,
                height: 83,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/avatars/avatar1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: -2,
                right: -2,
                child: Container(
                  width: 26,
                  height: 26,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xff1273fc) ,
                    border: Border.all(
                      color: Colors.white,
                      width: 4.0,
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'Your story',
            style: TextStyle(
                fontSize: 12,
                color: Colors.black54
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}



