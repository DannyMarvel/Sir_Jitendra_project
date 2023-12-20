import 'package:flutter/material.dart';
import 'package:sir_jitendra_project/Widgets/primary_icons.dart';
import 'package:sir_jitendra_project/Widgets/row_icon.dart';

import '../Utils/colors.dart';
import '../Utils/styles.dart';

class FirstCard extends StatelessWidget {
  const FirstCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      //  width: size.width * 0.94,
      //         height: size.height * 1.2,
      // decoration: BoxDecoration(
      //   color: cardColor,
      //   borderRadius: BorderRadius.all(
      //     Radius.circular(7),
      //   ),
      // ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Dec, 12, 2023',
              style: smallfonts,
            ),
          ),
          Center(
            child: Text(
              'Today\'s Insights',
              style: bigfonts,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1),
            child: Text(
              '''Embrace change, trust institution and 
go for it today.
            ''',
              style: bigfonts,
            ),
          ),
          Expanded(
            child: Text(
              '''
This is Jitendra, you must have reached me on LinkedIn after my 
Flutter opening post. If you
want to know more about me or Melooha, you can check that out on 
LinkedIn. I would like to
say thank you for considering it. As we are an early stage startup,
we are short of HR and
being a part of the development team.
                 ''',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
          ),
          // SizedBox(
          //   height: 150,
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: RowIcon(),
          ),
        ],
      ),
    );
  }
}
