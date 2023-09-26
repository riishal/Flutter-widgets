import 'package:flutter/material.dart';

class CircularProgressIndicatorDesign extends StatefulWidget {
  const CircularProgressIndicatorDesign({Key? key}) : super(key: key);

  @override
  State<CircularProgressIndicatorDesign> createState() =>
      _CircularProgressIndicatorDesignState();
}

class _CircularProgressIndicatorDesignState
    extends State<CircularProgressIndicatorDesign> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.black,
          color: Colors.orange,
          strokeWidth: 5,
        ),
      ),
    );
  }
}
