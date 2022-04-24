import 'package:flutter/material.dart';
import '../utils/utils.dart';

class CircleButton extends StatelessWidget {
  final Function() onPressed;
  final Icon icon;
  const CircleButton({Key? key, required this.onPressed,required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      splashRadius: 20,
      splashColor: secondaryColor,
    );
  }
}
