import 'package:flutter/material.dart';

import '../components/main.dart';
import '../components/menu.dart';

class WebWidget extends StatefulWidget {
  const WebWidget({super.key});

  @override
  State<WebWidget> createState() => _WebWidgetState();
}

class _WebWidgetState extends State<WebWidget> {
  var showMenu = true;

  void toogleMenu() {
    setState(() {
      showMenu = !showMenu;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: toogleMenu,
        ),
        title: const Text('Dashboard Web'),
      ),
      body: Row(
        children: [
          showMenu ? const DrawerWebWidget() : Container(),
          const Expanded(
            child: MainWidget(),
          ),
        ],
      ),
    );
  }
}

class DrawerWebWidget extends StatelessWidget {
  const DrawerWebWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: MenuWidget(),
    );
  }
}
