import 'package:flutter/material.dart';

class WrapDesign extends StatefulWidget {
  const WrapDesign({Key? key}) : super(key: key);

  @override
  State<WrapDesign> createState() => _WrapDesignState();
}

class _WrapDesignState extends State<WrapDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Wrap(
        spacing: 10,
        runSpacing: 20,
        direction: Axis.horizontal,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            margin: const EdgeInsets.all(10),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
            margin: const EdgeInsets.all(10),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
            margin: const EdgeInsets.all(10),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
            margin: const EdgeInsets.all(10),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.purple,
            margin: const EdgeInsets.all(10),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.brown,
            margin: const EdgeInsets.all(10),
          ),
        ],
      ),
    );
  }
}
