import 'package:flutter/material.dart';

class ConstrainedBoxDesign extends StatefulWidget {
  const ConstrainedBoxDesign({Key? key}) : super(key: key);

  @override
  State<ConstrainedBoxDesign> createState() => _ConstrainedBoxDesignState();
}

class _ConstrainedBoxDesignState extends State<ConstrainedBoxDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints.tightForFinite(),
          child: const Text(
            "Constrained box",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
