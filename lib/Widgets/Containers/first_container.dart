import 'package:flutter/material.dart';
import 'package:sir_jitendra_project/Utils/colors.dart';
import 'package:sir_jitendra_project/Utils/styles.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.85,
      height: size.height * 0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: containerColor,
      ),
      child: Column(
        children: [
          Text(
            'Choghadiya',
            style: bigfonts,
          ),
          Text(
            'embrace positivity, seek oppurtunities between',
            style: smallfonts,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '11:34 PM',
                    style: bigfonts,
                  ),
                  Text(
                    'to',
                    style: bigfonts,
                  ),
                  Text(
                    '12:34 AM',
                    style: bigfonts,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Starts',
                    style: smallfonts,
                  ),
                  Text(''),
                  Text(
                    'Ends',
                    style: smallfonts,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
