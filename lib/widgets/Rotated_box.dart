import 'package:flutter/material.dart';

class RotatedBoxDesign extends StatefulWidget {
  const RotatedBoxDesign({Key? key}) : super(key: key);

  @override
  State<RotatedBoxDesign> createState() => _RotatedBoxDesignState();
}

class _RotatedBoxDesignState extends State<RotatedBoxDesign> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: RotatedBox(
          quarterTurns: 5,
          child: Text(
            "Rotated Box",
            style: TextStyle(
              color: Colors.purple,
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }
}
