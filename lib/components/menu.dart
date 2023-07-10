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
            ? AppBar(
                leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back)),
                title: const Text('Dashboard Menu'),
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
