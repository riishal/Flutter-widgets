import 'package:flutter/material.dart';

enum Menu { ItemOne, ItemTwo, ItemThree, ItemFour, ItemFive }

class PopupMenuButtonDesign extends StatefulWidget {
  const PopupMenuButtonDesign({Key? key}) : super(key: key);

  @override
  State<PopupMenuButtonDesign> createState() => _PopupMenuButtonDesignState();
}

class _PopupMenuButtonDesignState extends State<PopupMenuButtonDesign> {
  String _selectedMenu = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Popup Menu"),
        actions: [
          PopupMenuButton<Menu>(
            color: Colors.black,
            onSelected: (Menu item) {
              setState(() {
                _selectedMenu = item.name;
              });
            },
            itemBuilder: (context) => <PopupMenuEntry<Menu>>[
              const PopupMenuItem<Menu>(
                value: Menu.ItemOne,
                child: Text(
                  "Item 1",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const PopupMenuItem<Menu>(
                value: Menu.ItemTwo,
                child: Text(
                  "Item 2",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const PopupMenuItem<Menu>(
                value: Menu.ItemThree,
                child: Text(
                  "Item 3",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const PopupMenuItem<Menu>(
                value: Menu.ItemFour,
                child: Text(
                  "Item 4",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const PopupMenuItem<Menu>(
                value: Menu.ItemFive,
                child: Text(
                  "Item 5",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Text(
          "Selected Item: $_selectedMenu",
          style: const TextStyle(
            color: Colors.orange,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
