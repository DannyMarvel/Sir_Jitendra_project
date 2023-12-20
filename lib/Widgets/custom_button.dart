import 'package:flutter/material.dart';
import 'package:sir_jitendra_project/Utils/colors.dart';
import 'package:sir_jitendra_project/Utils/styles.dart';

class CustomButton extends StatefulWidget {
  CustomButton({super.key, required this.text});
  final String text;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  //VoidCallback? tap;
  bool click = true;

  Widget? icon;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        setState(() {
          click = !click;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          height: size.height * 0.05,
          margin: const EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            color: (click == true) ? cardColor : Colors.pink,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.pink),
          ),
          width: size.width * 0.79,
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(widget.text, style: bigfonts),
          ),
        ),
      ),
    );
  }
}
