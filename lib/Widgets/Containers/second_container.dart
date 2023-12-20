import 'package:flutter/material.dart';

import '../../Utils/colors.dart';
import '../../Utils/styles.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({
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
            'Rahu Kaal',
            style: bigfonts,
          ),
          Text(
            'navigate chanllenges wisely between',
            style: smallfonts,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '03:34 PM',
                    style: bigfonts,
                  ),
                  Text(
                    'to',
                    style: bigfonts,
                  ),
                  Text(
                    '06:34 AM',
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
