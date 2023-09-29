import 'package:flutter/material.dart';

class ListTileDesign extends StatefulWidget {
  const ListTileDesign({Key? key}) : super(key: key);

  @override
  State<ListTileDesign> createState() => _ListTileDesignState();
}

class _ListTileDesignState extends State<ListTileDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 380,
          width: double.infinity,
          child: Column(
            children: [
              listTileWidget(
                  Icons.camera_roll, "Attractions", "attractions subtitle"),
              listTileWidget(Icons.dining, "Dining", "dining subtitle"),
              listTileWidget(Icons.edit, "Education", "education subtitle"),
              listTileWidget(Icons.favorite, "Health", "health subtitle"),
              listTileWidget(Icons.people_sharp, "Family", "family subtitle"),
            ],
          ),
        ),
      ),
    );
  }

  Widget listTileWidget(IconData icon, String title, String subtitle) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      trailing: const Icon(
        Icons.more_vert,
        color: Colors.white,
      ),
    );
  }
}
