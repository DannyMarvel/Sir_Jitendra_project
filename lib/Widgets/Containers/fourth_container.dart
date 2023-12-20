import 'package:flutter/material.dart';

import '../../Utils/colors.dart';
import '../../Utils/styles.dart';

class FourthContainer extends StatelessWidget {
  const FourthContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: containerColor,
        ),
        width: size.width * 0.35,
        height: size.height * 0.097,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '12',
              style: bigfonts,
            ),
            Text(
              'Lucky Number',
              style: smallfonts,
            ),
          ],
        ));
  }
}
