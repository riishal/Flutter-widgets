import 'package:flutter/material.dart';

class StackDesign extends StatefulWidget {
  const StackDesign({Key? key}) : super(key: key);

  @override
  State<StackDesign> createState() => _StackDesignState();
}

class _StackDesignState extends State<StackDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          containerWidget(400, Colors.blue),
          containerWidget(300, Colors.amber),
          containerWidget(200, Colors.purple),
          containerWidget(100, Colors.green),
          containerWidget(0, Colors.pink),
        ],
      ),
    );
  }

  Widget containerWidget(double bottom, Color color) {
    return Positioned(
      bottom: bottom,
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          border: Border.all(width: 2, color: Colors.white),
        ),
      ),
    );
  }
}
