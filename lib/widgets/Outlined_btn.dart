import 'package:flutter/material.dart';

class OutlinedButtonDesign extends StatefulWidget {
  const OutlinedButtonDesign({Key? key}) : super(key: key);

  @override
  State<OutlinedButtonDesign> createState() => _OutlinedButtonDesignState();
}

class _OutlinedButtonDesignState extends State<OutlinedButtonDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                backgroundColor: Colors.white,
                content: Text(
                  "You Clicked Outlined Button",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
          style: OutlinedButton.styleFrom(
            side: const BorderSide(
              color: Colors.white,
              width: 2,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          ),
          child: const Text(
            "Outlined Button",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2,
            ),
          ),
        ),
      ),
    );
  }
}
