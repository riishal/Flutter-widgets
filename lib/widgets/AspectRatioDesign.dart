import 'package:flutter/material.dart';

class AspectRatioDesign extends StatefulWidget {
  const AspectRatioDesign({Key? key}) : super(key: key);

  @override
  State<AspectRatioDesign> createState() => _AspectRatioDesignState();
}

class _AspectRatioDesignState extends State<AspectRatioDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center, // alignment should mention, or not work
          height: 200,
          width: 200,
          color: Colors.green.shade800,
          child: AspectRatio(
            aspectRatio: 3 / 5,
            child: Container(
              height: 100,
              width: 200,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
