// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class CustomLongButton extends StatelessWidget {
  final Widget child;
  final void Function()? onTap;
  final Color? backGroundColor;
  final MaterialStateProperty<OutlinedBorder?>? shape;
  const CustomLongButton({
    required this.child,
    required this.onTap,
    this.backGroundColor,
    Key? key,
    this.shape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: 50,
      child: ElevatedButton(
          style: ButtonStyle(
            shape: shape,
            backgroundColor: MaterialStateProperty.all(backGroundColor),
          ),
          onPressed: onTap,
          child: child),
    );
  }
}
