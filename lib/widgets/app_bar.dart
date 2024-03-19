import 'package:flutter/material.dart';

class InstagramAppBar extends StatelessWidget implements PreferredSizeWidget{
  const InstagramAppBar({super.key});

  @override
  Widget build(BuildContext context){
    return AppBar(
      backgroundColor: Colors.white,
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
              icon: Image.asset(
                'assets/icons/messenger_icon.png',
                height: 30,
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}