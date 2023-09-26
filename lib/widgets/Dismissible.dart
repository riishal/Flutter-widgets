import 'package:flutter/material.dart';

class DismissibleDesign extends StatefulWidget {
  const DismissibleDesign({Key? key}) : super(key: key);

  @override
  State<DismissibleDesign> createState() => _DismissibleDesignState();
}

class _DismissibleDesignState extends State<DismissibleDesign> {
  List<String> items = [
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 500,
          width: 300,
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: ValueKey(items[index]),
                background: Container(
                  color: Colors.black,
                ),
                onDismissed: (direction) {
                  setState(() {
                    items.removeAt(index);
                  });
                },
                child: ListTile(
                  tileColor: Colors.amber,
                  title: Text(
                    items[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
