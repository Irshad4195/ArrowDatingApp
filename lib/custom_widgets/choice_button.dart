import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final double size;
  final IconData icon;
  final bool hasGradient;

  const ChoiceButton(
      {super.key,
      required this.width,
      required this.height,
      required this.color,
      required this.hasGradient,
      required this.size,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          gradient: hasGradient
              ? LinearGradient(colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).hintColor
                ])
              : LinearGradient(colors: [
                  Colors.white,
                  Colors.white,
                ]),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withAlpha(50),
              spreadRadius: 4,
              blurRadius: 4,
              offset: Offset(3, 3),
            )
          ]),
      child: Icon(
        icon,
        color: color,
        size: size,
      ),
    );
  }
}
