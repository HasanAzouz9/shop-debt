import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final void Function()? onTap;
  final IconData icon;
  final Color? iconColor;
  final double? iconSize;
  const AppIconButton({super.key, this.onTap, required this.icon, this.iconColor, this.iconSize});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
