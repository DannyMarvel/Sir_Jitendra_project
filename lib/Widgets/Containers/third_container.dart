import 'package:flutter/material.dart';

import '../../Utils/colors.dart';
import '../../Utils/styles.dart';

class ThirdContainer extends StatelessWidget {
  const ThirdContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 3),
      child: Container(
          width: size.width * 0.35,
          height: size.height * 0.097,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: containerColor,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: size.width * 0.25,
                        height: size.height * 0.037,
                      ),
                      Positioned(
                        left: 47,
                        child: Text(
                          'Red',
                          style: bigfonts,
                        ),
                      ),
                      Positioned(
                        left: 28,
                        bottom: 9,
                        child: Icon(
                          Icons.circle_rounded,
                          color: ballColor,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Lucky Color',
                  style: smallfonts,
                ),
              ],
            ),
          )),
    );
  }
}
