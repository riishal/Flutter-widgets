import 'package:flutter/material.dart';

class DrawerDesign extends StatefulWidget {
  const DrawerDesign({Key? key}) : super(key: key);

  @override
  State<DrawerDesign> createState() => _DrawerDesignState();
}

class _DrawerDesignState extends State<DrawerDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerWidget(context),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Flutter Drawer",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
    );
  }

  Widget drawerWidget(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.teal,
      child: ListView(
        children: [
          drawerHeader(context),
          const ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            title: Text(
              "Favorite",
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.share,
              color: Colors.white,
            ),
            title: Text(
              "Share",
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: Text(
              "Settings",
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            leading: const Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            title: const Text(
              "Exit",
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget drawerHeader(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.teal,
            radius: 35,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Donald Duck",
                style: TextStyle(
                  color: Colors.teal,
                ),
              ),
              Text(
                "duck@gmail.com",
                style: TextStyle(
                  color: Colors.teal,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
