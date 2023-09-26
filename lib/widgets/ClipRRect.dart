import 'package:flutter/material.dart';

class ClipRRectDesign extends StatefulWidget {
  const ClipRRectDesign({Key? key}) : super(key: key);

  @override
  State<ClipRRectDesign> createState() => _ClipRRectDesignState();
}

class _ClipRRectDesignState extends State<ClipRRectDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            alignment: Alignment.center,
            height: 200,
            width: 200,
            color: Colors.amber,
            child: const Text(
              "ClipRRect",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
