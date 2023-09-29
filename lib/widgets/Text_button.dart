import 'package:flutter/material.dart';

class TextButtonDesign extends StatefulWidget {
  const TextButtonDesign({Key? key}) : super(key: key);

  @override
  State<TextButtonDesign> createState() => _TextButtonDesignState();
}

class _TextButtonDesignState extends State<TextButtonDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: TextButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                backgroundColor: Colors.amber,
                content: Text(
                  "You Clicked TextButton",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.amber,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          ),
          child: const Text(
            "Text Button",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
    );
  }
}
