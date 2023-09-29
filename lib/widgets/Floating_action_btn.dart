import 'package:flutter/material.dart';

class FloatingActionButtonDesign extends StatefulWidget {
  const FloatingActionButtonDesign({Key? key}) : super(key: key);

  @override
  State<FloatingActionButtonDesign> createState() =>
      _FloatingActionButtonDesignState();
}

class _FloatingActionButtonDesignState
    extends State<FloatingActionButtonDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: const Center(
        child: Text(
          "Floating Action Button",
          style: TextStyle(
            color: Colors.amber,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Approve"),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                "You Pressed Floating Action Button",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
        backgroundColor: Colors.pink,
        icon: const Icon(
          Icons.thumb_up,
          size: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
