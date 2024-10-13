import 'package:flutter/material.dart';
import 'package:widgets_example/drawer_screen.dart';
import 'package:widgets_example/widgets/big_card.dart';
import 'package:widgets_example/widgets/small_card.dart';

class UserScreen extends StatelessWidget {
  final String title;
  const UserScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: const Padding(
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
      ),
      drawer: const DrawerExample(),
    );
  }
}
