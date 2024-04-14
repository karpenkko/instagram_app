import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/icon.dart';
import 'package:provider/provider.dart';
import '../theme/theme_provider.dart';

class InstagramAppBar extends StatelessWidget implements PreferredSizeWidget {
  const InstagramAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider provider = Provider.of<ThemeProvider>(context, listen: true);
    bool isDarkMode = provider.isDarkMode;

    return AppBar(
      title: const ThemedSvgIcon(
        assetPath: 'assets/logo.svg',
        size: 42,
      ),
      actions: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                provider.toggleTheme();
              },
              icon: Icon(
                isDarkMode
                    ? Icons.nightlight_outlined
                    : Icons.wb_sunny_outlined,
                size: 26,
              ),
              color: isDarkMode ? Colors.white : Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                size: 26,
              ),
              color: isDarkMode ? Colors.white : Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: const ThemedSvgIcon(
                assetPath: 'assets/icons/messenger_icon.svg',
                size: 30,
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
