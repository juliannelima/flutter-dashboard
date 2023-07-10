import 'package:flutter/material.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.blueGrey,
      child: const Center(child: Text('Main')),
    );
  }
}
