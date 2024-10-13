import 'package:flutter/material.dart';
import 'package:widgets_example/drawer_screen.dart';
import 'package:widgets_example/models/widget_types.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      drawer: const DrawerExample(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            // Two elements in each row
            crossAxisCount: 2,
            children: widgetTypes.map((widgetType) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.widgets,
                          color: Colors.blue,
                        ),
                        Text(
                          widgetType,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "Hello, Flutter!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.green),
                        ),
                      ]),
                ),
              );
            }).toList()),
      ),
    );
  }
}
