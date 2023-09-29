import 'package:flutter/material.dart';

class SnackBarDesign extends StatefulWidget {
  const SnackBarDesign({Key? key}) : super(key: key);

  @override
  State<SnackBarDesign> createState() => _SnackBarDesignState();
}

class _SnackBarDesignState extends State<SnackBarDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.orange,
                content: const Text(
                  "Snack Bar Activated...",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                duration: const Duration(seconds: 1),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            primary: Colors.orange,
          ),
          child: const Text(
            "Activate Snack Bar",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
