import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  final bool header;

  const MenuWidget({
    super.key,
    this.header = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header
            ? Container(
                color: Colors.blue,
                child: Row(
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                    const Text('Dashboard')
                  ],
                ),
              )
            : Container(),
        const ListTile(
          leading: Icon(
            Icons.arrow_right_outlined,
            size: 32,
          ),
          title: Text('Menu'),
        ),
        const ListTile(
          leading: Icon(
            Icons.arrow_right_outlined,
            size: 32,
          ),
          title: Text('Menu'),
        )
      ],
    );
  }
}
