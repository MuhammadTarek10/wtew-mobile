import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    Key? key,
    required this.title,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  final String title;
  final VoidCallback onTap;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ImageIcon(AssetImage(icon)),
      title: Text(title),
      onTap: onTap,
    );
  }
}
