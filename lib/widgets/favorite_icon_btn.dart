import 'package:flutter/material.dart';

class FavoriteIconBtn extends StatelessWidget {
  const FavoriteIconBtn({
    super.key,
    required this.onTap,
    required this.btnColor,
    required this.btnIcon,
    this.btnSize = 24,
  });
  final VoidCallback onTap;
  final IconData btnIcon;
  final Color btnColor;
  final double btnSize;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        btnIcon,
        color: btnColor,
        size: btnSize,
      ),
    );
  }
}
