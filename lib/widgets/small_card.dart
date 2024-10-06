import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData bigIcon;
  final IconData smallIcon;

  const SmallCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.bigIcon,
      required this.smallIcon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              bigIcon,
              color: Colors.grey[600],
              size: 50,
            ),
            SizedBox(
              width: 300,
              child: ListTile(
                title: Text(title),
                subtitle: Text(subtitle),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(onPressed: () {}, icon: Icon(smallIcon)),
            )
          ],
        ),
      ),
    );
  }
}