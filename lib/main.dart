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
      home: const Home(),
    );
  }
}

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

class MobileWidget extends StatelessWidget {
  const MobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
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

class DrawerWebWidget extends StatelessWidget {
  const DrawerWebWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: MenuWidget(),
    );
  }
}

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
