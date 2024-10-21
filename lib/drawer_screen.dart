import 'package:flutter/material.dart';
import 'package:widgets_example/home_screen.dart';
import 'package:widgets_example/sign_up_screen.dart';
import 'package:widgets_example/user_screen.dart';
import 'package:widgets_example/widgets/rounded_picture.dart';

class DrawerExample extends StatelessWidget {
  const DrawerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 400,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
             InkWell(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const UserScreen(title: 'User Screen',)));
              },
              child: const Row(
                children: [
                  RoundedPicture(bigIcon: Icons.person),
                  Expanded(
                    child: ListTile(
                      title: Text("John Due"),
                      subtitle: Text("john@example.com"),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()));
              },
              leading: const Icon(Icons.home),
              title: const Text('Home'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
              leading: const Icon(Icons.login),
              title: const Text('Login'),
            ),
            const ListTile(
              leading: Icon(Icons.add),
              title: Text('New'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            const ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
            ),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
