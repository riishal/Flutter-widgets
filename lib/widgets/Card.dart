import 'package:flutter/material.dart';

class CardDesign extends StatefulWidget {
  const CardDesign({Key? key}) : super(key: key);

  @override
  State<CardDesign> createState() => _CardDesignState();
}

class _CardDesignState extends State<CardDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Colors.amber,
          child: Container(
            alignment: Alignment.center,
            height: 200,
            width: 200,
            child: const Text(
              "Card",
              style: TextStyle(
                color: Colors.black,
                fontSize: 58,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
