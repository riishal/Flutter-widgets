import 'package:flutter/material.dart';

class GestureDetectorDesign extends StatefulWidget {
  const GestureDetectorDesign({Key? key}) : super(key: key);

  @override
  State<GestureDetectorDesign> createState() => _GestureDetectorDesignState();
}

class _GestureDetectorDesignState extends State<GestureDetectorDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                backgroundColor: Colors.red,
                content: Text(
                  "You Clicked Dummy Button",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
          child: Container(
            height: 50,
            width: 180,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.red,
                  Colors.green,
                ],
              ),
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(20),
                right: Radius.circular(20),
              ),
            ),
            child: const Text(
              "Dummy Button",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
