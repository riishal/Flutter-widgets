import 'package:flutter/material.dart';

class ContainerDesign extends StatefulWidget {
  const ContainerDesign({Key? key}) : super(key: key);

  @override
  State<ContainerDesign> createState() => _ContainerDesignState();
}

class _ContainerDesignState extends State<ContainerDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          transform: Matrix4.rotationZ(0.15),
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.pink.shade500,
                Colors.green.shade700,
                Colors.purple.shade900,
              ],
            ),
            border: Border.all(width: 2, color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const RotatedBox(
            quarterTurns: 3,
            child: Text(
              "Container",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28,
                letterSpacing: 5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
