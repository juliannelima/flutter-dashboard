import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        // useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          title: const Text('Dashboard'),
        ),
        body: Row(
          children: [
            Drawer(
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(
                      Icons.arrow_right_outlined,
                      size: 32,
                    ),
                    title: Text('Menu'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.arrow_right_outlined,
                      size: 32,
                    ),
                    title: Text('Menu'),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                color: Colors.blueGrey,
                child: const Text('main'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
