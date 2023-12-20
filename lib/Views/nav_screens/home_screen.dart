import 'package:flutter/material.dart';
import 'package:sir_jitendra_project/Widgets/cardwidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CardWidget(),
    );
  }
}
