import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../theme/theme_provider.dart';

class ThemedSvgIcon extends StatelessWidget {
  final String assetPath;
  final double? size;

  const ThemedSvgIcon({
    super.key,
    required this.assetPath,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Provider.of<ThemeProvider>(context).isDarkMode;

    Color color = isDarkMode ? Colors.white : Colors.black;

    return SvgPicture.asset(
      assetPath,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      height: size,
    );
  }
}
