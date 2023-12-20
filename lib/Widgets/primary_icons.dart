import 'package:flutter/material.dart';

class PrimaryIcons extends StatelessWidget {
  final void Function()? onPressed;
  final Widget icon;
  const PrimaryIcons({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: icon
    );
  }
}
