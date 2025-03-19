import 'package:flutter/material.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackArrow;
  final Color? backgroundColor;

  const TAppBar({
    required this.title,
    required this.showBackArrow,
    this.backgroundColor, // Nullable background color
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: backgroundColor ?? Colors.blue, // Set default color if null
      leading: showBackArrow ? const BackButton() : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
