import 'package:flutter/material.dart';

class SizedBoxDesign extends StatefulWidget {
  const SizedBoxDesign({Key? key}) : super(key: key);

  @override
  State<SizedBoxDesign> createState() => _SizedBoxDesignState();
}

class _SizedBoxDesignState extends State<SizedBoxDesign> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Card(
            color: Colors.amber,
            child: Center(
              child: Text(
                "SizedBox",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
