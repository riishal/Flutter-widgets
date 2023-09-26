import 'package:flutter/material.dart';

class BottomNavigationBarDesign extends StatefulWidget {
  const BottomNavigationBarDesign({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarDesign> createState() =>
      _BottomNavigationBarDesignState();
}

class _BottomNavigationBarDesignState extends State<BottomNavigationBarDesign> {
  int _currentIndex = 0;
  static const TextStyle textStyle = TextStyle(
    color: Colors.amber,
    fontSize: 40,
    fontWeight: FontWeight.bold,
  );
  static const List<Widget> textWidgets = [
    Text(
      "Home",
      style: textStyle,
    ),
    Text(
      "Favorite",
      style: textStyle,
    ),
    Text(
      "Add",
      style: textStyle,
    ),
    Text(
      "Settings",
      style: textStyle,
    ),
    Text(
      "Profile",
      style: textStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: textWidgets.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple.shade900,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
