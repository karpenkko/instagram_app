import 'package:flutter/material.dart';

class InstagramNavBar extends StatelessWidget implements PreferredSizeWidget{
  const InstagramNavBar({super.key});

  @override
  Widget build(BuildContext context){
    return BottomNavigationBar(
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kBottomNavigationBarHeight);
}