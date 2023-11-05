import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  final Icon icon;
  final Function()? onPressed;
  const MyIcon({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      borderRadius: BorderRadius.circular(50),
      splashFactory: NoSplash.splashFactory,
      onTap: onPressed,
      child: icon,
    );
  }
}
