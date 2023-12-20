import 'package:flutter/material.dart';

import '../../Utils/colors.dart';

class MediumContainer extends StatelessWidget {
  const MediumContainer({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 7),
      child: Container(
        width: size.width * 0.67,
        height: size.height * 0.05,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(13),
            bottomRight: Radius.circular(13),
            topRight: Radius.circular(13),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 7, top: 10),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
