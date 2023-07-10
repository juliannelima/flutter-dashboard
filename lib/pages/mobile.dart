import 'package:flutter/material.dart';

import '../components/content.dart';
import '../components/menu.dart';

class MobileWidget extends StatelessWidget {
  const MobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Mobile'),
      ),
      drawer: const Drawer(
        child: MenuWidget(
          header: true,
        ),
      ),
      body: const SizedBox(
        width: double.infinity,
        child: MainWidget(),
      ),
    );
  }
}
