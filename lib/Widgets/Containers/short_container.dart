import 'package:flutter/material.dart';

import '../../Utils/colors.dart';

class ShortContainer extends StatelessWidget {
  const ShortContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 13),
      child: Container(
        width: size.width * 0.57,
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
            'Will I get married this year?',
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
