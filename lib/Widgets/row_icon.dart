import 'package:flutter/material.dart';
import 'package:sir_jitendra_project/Widgets/primary_icons.dart';

import '../Utils/colors.dart';

class RowIcon extends StatelessWidget {
  const RowIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: Container(
              // width: size.width * 0.18,
              // height: size.height * 0.05,
              color: cardColor,
              child: Center(
                child: Row(
                  children: [
                    PrimaryIcons(
                        onPressed: () {},
                        icon: Icon(
                          Icons.thumb_up_outlined,
                          color: Colors.white,
                        )),
                    Text(
                      '|',
                      style: TextStyle(
                        color: TextColor,
                        fontWeight: FontWeight.bold,
                        // fontSize: 100,
                      ),
                    ),
                    PrimaryIcons(
                      onPressed: () {},
                      icon: Icon(
                        Icons.thumb_down_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: Container(
              color: cardColor,
              child: PrimaryIcons(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share_outlined,
                    color: Colors.white,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
