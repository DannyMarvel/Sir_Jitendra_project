import 'package:flutter/material.dart';
import 'package:sir_jitendra_project/Widgets/Containers/long_container.dart';
import 'package:sir_jitendra_project/Widgets/Containers/medium_container.dart';
import 'package:sir_jitendra_project/Widgets/Containers/short_container.dart';
import 'package:sir_jitendra_project/Widgets/custom_button.dart';

import '../Utils/colors.dart';
import '../Utils/styles.dart';

class ThirdCard extends StatelessWidget {
  const ThirdCard({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.01,
          ),
          Center(
              child: Text(
            'Ask Your Questions',
            style: smallfonts,
          )),
          SizedBox(
            height: size.height * 0.01,
          ),
          Center(
              child: Text(
            'Post Your Questions to AI',
            style: bigfonts,
          )),
          SizedBox(
            height: size.height * 0.011,
          ),
          Stack(
            children: [
              Container(),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  color: navColor,
                ),
              ),
              // SizedBox(
              //   height: size.height * 0.014,
              // ),
              Positioned(
                left: 37,
                bottom: 13,
                child: Text(
                  'Vaani',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.001,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Text(
              'Here are some suggestions for you.',
              style: TextStyle(fontSize: 10, color: Colors.white),
            ),
          ),
          SizedBox(
            height: size.height * 0.014,
          ),
          LongContainer(),
          SizedBox(
            height: size.height * 0.011,
          ),
          ShortContainer(),
          SizedBox(
            height: size.height * 0.011,
          ),
          MediumContainer(
            text: 'Will I win the upcoming football match?',
          ),
          SizedBox(
            height: size.height * 0.011,
          ),
          LongContainer(),
          SizedBox(
            height: size.height * 0.011,
          ),
          MediumContainer(
            text: 'How will be my coming days?',
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          CustomButton(text: 'Ask your own Questions to Vanni'),
        ],
      ),
    );
  }
}
