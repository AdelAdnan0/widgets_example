import 'package:flutter/material.dart';
import 'package:widgets_example/widgets/square_button.dart';
import 'package:widgets_example/widgets/rounded_picture.dart';

class BigCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData bigIcon;

  const BigCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.bigIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RoundedPicture(bigIcon: bigIcon),
                SizedBox(
                  width: 200,
                  child: ListTile(
                    title: Text(title),
                    subtitle: Text(subtitle),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: PopupMenuButton<String>(
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                 SquareButton(color: Colors.blue, text: "Blue Box"),
                 SquareButton(color: Colors.green, text: "Green Box"),
                
              ],
            )
          ],
        ),
      ),
    );
  }
}