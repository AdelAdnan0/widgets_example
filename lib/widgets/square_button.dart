import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  final Color color;
  final String text;
  const SquareButton({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      style: FilledButton.styleFrom(
          fixedSize: const Size(200, 100),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          backgroundColor: color),
      child: Text(text),
    );
  }
}