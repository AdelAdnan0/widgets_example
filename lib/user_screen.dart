import 'package:flutter/material.dart';
import 'package:widgets_example/widgets/big_card.dart';
import 'package:widgets_example/widgets/small_card.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BigCard(
              title: 'John Due',
              subtitle: 'Software Developer',
              bigIcon: Icons.person,
            ),
            SmallCard(
                title: "Email",
                subtitle: "example@example@gmail.com",
                bigIcon: Icons.email,
                smallIcon: Icons.edit),
            SmallCard(
                title: "Phone",
                subtitle: "+1234567890",
                bigIcon: Icons.phone,
                smallIcon: Icons.local_phone_rounded),
          ],
        ),
      );
  }
}