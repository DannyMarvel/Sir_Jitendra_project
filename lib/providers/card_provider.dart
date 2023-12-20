import 'package:flutter/material.dart';
import 'package:sir_jitendra_project/Widgets/fifth_card.dart';
import 'package:sir_jitendra_project/Widgets/first_card.dart';
import 'package:sir_jitendra_project/Widgets/fourth_card.dart';
import 'package:sir_jitendra_project/Widgets/second_card..dart';
import 'package:sir_jitendra_project/Widgets/third_card..dart';

class CardProvider with ChangeNotifier {
  List<Widget> cards =  [
    FirstCard(),
    SecondCard(),
    ThirdCard(),
    FourthCard(),
    FifthCard(),
  ];
}
