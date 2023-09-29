import 'package:flutter/material.dart';

class TransformDesign extends StatefulWidget {
  const TransformDesign({Key? key}) : super(key: key);

  @override
  State<TransformDesign> createState() => _TransformDesignState();
}

class _TransformDesignState extends State<TransformDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 180,
          width: 300,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 40,
              ),
              Transform(
                transform: Matrix4.translationValues(-40, 0, 0),
                child: const CircleAvatar(
                  backgroundColor: Colors.pink,
                  radius: 40,
                ),
              ),
              Text(
                "Visa".toUpperCase(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
