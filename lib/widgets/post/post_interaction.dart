import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../theme/theme_provider.dart';
import '../icon.dart';

class PostInteraction extends StatelessWidget {
  const PostInteraction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Provider.of<ThemeProvider>(context).isDarkMode;

    return Row(
      children: [
        SizedBox(
          width: 42,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              size: 26,
            ),
            color: isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        SizedBox(
          width: 42,
          child: IconButton(
            onPressed: () {},
            icon: const ThemedSvgIcon(
              assetPath: 'assets/icons/comments.svg',
              size: 24,
            ),
          ),
        ),
        SizedBox(
          width: 42,
          child: IconButton(
            onPressed: () {},
            icon: const ThemedSvgIcon(
              assetPath: 'assets/icons/sent.svg',
              size: 24,
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () {},
              icon: const ThemedSvgIcon(
                assetPath: 'assets/icons/saved.svg',
                size: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
