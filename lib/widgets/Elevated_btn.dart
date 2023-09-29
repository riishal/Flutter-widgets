import 'package:flutter/material.dart';

class ElevatedButtonDesign extends StatefulWidget {
  const ElevatedButtonDesign({Key? key}) : super(key: key);

  @override
  State<ElevatedButtonDesign> createState() => _ElevatedButtonDesignState();
}

class _ElevatedButtonDesignState extends State<ElevatedButtonDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 40,
          width: 180,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(20),
              right: Radius.circular(20),
            ),
            gradient: LinearGradient(
              colors: [
                Colors.pink,
                Colors.green,
              ],
            ),
          ),
          child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("You pressed Elevated button"),
                  backgroundColor: Colors.purple,
                ),
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(20),
                    right: Radius.circular(20),
                  ),
                )),
            child: const Text(
              "Elevated Button",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
