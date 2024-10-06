import 'package:flutter/material.dart';

class RoundedPicture extends StatelessWidget {
  final IconData bigIcon;
  const RoundedPicture({super.key, required this.bigIcon});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        color: Colors.blue,
        width: 100,
        height: 100,
        child: Icon(
          bigIcon,
          size: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}
