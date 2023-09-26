import 'package:flutter/material.dart';

class ChipDesign extends StatefulWidget {
  const ChipDesign({Key? key}) : super(key: key);

  @override
  State<ChipDesign> createState() => _ChipDesignState();
}

class _ChipDesignState extends State<ChipDesign> {
  List<String> chipsList = ["Chip1", "Chip2", "Chip3"];
  List<String> chipsnumber = ["1", "2", "3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Wrap(
          spacing: 20,
          children: List.generate(chipsList.length, (index) {
            return Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(chipsnumber[index]),
              ),
              backgroundColor: Colors.amber.shade900,
              label: Text(
                chipsList[index],
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
              onDeleted: () {
                setState(() {
                  chipsList.removeAt(index);
                });
              },
            );
          }),
        ),
      ),
    );
  }
}
