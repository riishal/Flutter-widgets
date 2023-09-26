import 'package:flutter/material.dart';

class ClipOvalDesign extends StatefulWidget {
  const ClipOvalDesign({Key? key}) : super(key: key);

  @override
  State<ClipOvalDesign> createState() => _ClipOvalDesignState();
}

class _ClipOvalDesignState extends State<ClipOvalDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ClipOval(
          clipBehavior: Clip.hardEdge,
          child: Container(
            alignment: Alignment.center,
            height: 200,
            width: 200,
            color: Colors.indigo,
            child: const Text(
              "ClipOval",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
