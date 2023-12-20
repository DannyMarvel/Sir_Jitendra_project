import 'package:flutter/material.dart';
import 'package:sir_jitendra_project/Utils/styles.dart';
import 'package:sir_jitendra_project/Widgets/Containers/first_container.dart';
import 'package:sir_jitendra_project/Widgets/Containers/fourth_container.dart';
import 'package:sir_jitendra_project/Widgets/Containers/second_container.dart';
import 'package:sir_jitendra_project/Widgets/Containers/third_container.dart';
import 'package:sir_jitendra_project/Widgets/row_icon.dart';

import '../Utils/colors.dart';

class SecondCard extends StatelessWidget {
  const SecondCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      // width: size.width * 0.94,
      // height: size.height * 1.2,
      // decoration: BoxDecoration(
      //   color: cardColor,
      //   borderRadius: BorderRadius.all(
      //     Radius.circular(7),
      //   ),
      // ),
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            'Good and Challenging Moments',
            style: smallfonts,
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          Text(
            'Your Cosmic Daily Forecast',
            style: bigfonts,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          FirstContainer(),
          SizedBox(
            height: size.height * 0.015,
          ),
          SecondContainer(),
          SizedBox(
            height: size.height * 0.015,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ThirdContainer(),
                SizedBox(
                  width: size.width * 0.08,
                ),
                FourthContainer(),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: RowIcon(),
          ),
        ],
      ),
    );
  }
}
