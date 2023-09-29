import 'package:flutter/material.dart';

class DropdownButtonDesign extends StatefulWidget {
  const DropdownButtonDesign({Key? key}) : super(key: key);

  @override
  State<DropdownButtonDesign> createState() => _DropdownButtonDesignState();
}

class _DropdownButtonDesignState extends State<DropdownButtonDesign> {
  List<String> numberList = ["One", "Two", "Three", "Four", "Five"];
  String selectedValue = "One";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 40,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              dropdownColor: Colors.blue,
              value: selectedValue,
              items: numberList.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue = newValue!;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
