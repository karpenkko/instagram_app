import 'package:flutter/material.dart';

import 'icon.dart';

class InstagramNavBar extends StatelessWidget implements PreferredSizeWidget {
  const InstagramNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          const BottomNavigationBarItem(
            icon: ThemedSvgIcon(
              assetPath: 'assets/icons/home.svg',
              size: 24,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: ThemedSvgIcon(
              assetPath: 'assets/icons/search.svg',
              size: 24,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: ThemedSvgIcon(
              assetPath: 'assets/icons/new.svg',
              size: 24,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: ThemedSvgIcon(
              assetPath: 'assets/icons/reels.svg',
              size: 24,
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
        ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kBottomNavigationBarHeight);
}
