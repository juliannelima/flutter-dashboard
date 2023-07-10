import 'package:flutter/material.dart';

import 'mobile.dart';
import 'web.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth > 600) {
          return const WebWidget();
        } else {
          return const MobileWidget();
        }
      },
    );
  }
}
