import 'package:flutter/material.dart';

class SwitchDesign extends StatefulWidget {
  const SwitchDesign({Key? key}) : super(key: key);

  @override
  State<SwitchDesign> createState() => _SwitchDesignState();
}

class _SwitchDesignState extends State<SwitchDesign> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "${(_value == true) ? "Switch ON" : "Switch OFF"}",
              style: const TextStyle(
                color: Colors.pink,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Switch(
              value: _value,
              activeColor: Colors.amber,
              activeTrackColor: Colors.amber,
              inactiveTrackColor: Colors.purple,
              thumbColor: MaterialStateProperty.all(Colors.pink),
              onChanged: (bool newValue) {
                setState(() {
                  _value = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
