import 'package:flutter/material.dart';
import 'package:sir_jitendra_project/Widgets/custom_button.dart';

import '../Utils/colors.dart';
import '../Utils/styles.dart';

class FourthCard extends StatelessWidget {
  const FourthCard({super.key});

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
          Column(
            children: [
              Center(
                  child: Text(
                'Know your Qualities',
                style: smallfonts,
              )),
              Center(
                  child: Text(
                'Know Yourself, Based on Your',
                style: bigfonts,
              )),
              Center(
                  child: Text(
                ' Personal Traits',
                style: bigfonts,
              )),
              SizedBox(
                height: size.height * 0.01,
              ),
              SizedBox(
                height: size.height * 0.25,
                //width: size.width * 0.11,
                child: Image.asset('Assets/images/big-student.png'),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Center(
                child: Text(
                  'Emotional Intelligence',
                  style: bigfonts,
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                child: Center(
                  child: Text(
                    '''Your Emotional Intelligence is remarkable,
    Your ability to understand, emphatize, and
    connect with others on such a profound
    level is truly exceptional. Intelligence is 
                      ''',
                    style: smallfonts,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          Stack(
            children: [
              CustomButton(
                text: 'Unlock all 23 Personality Traits',
              ),
              Positioned(
                left: 10,
                bottom: 22,
                child: Icon(Icons.lock_outline, color: TextColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
