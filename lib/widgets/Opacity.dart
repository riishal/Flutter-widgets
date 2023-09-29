import 'package:flutter/material.dart';

class OpacityDesign extends StatefulWidget {
  const OpacityDesign({Key? key}) : super(key: key);

  @override
  State<OpacityDesign> createState() => _OpacityDesignState();
}

class _OpacityDesignState extends State<OpacityDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 200,
              left: 100,
              child: Opacity(
                opacity: 0.9,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.pink,
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 50,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.amber.withOpacity(0.3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
