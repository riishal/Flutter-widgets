import 'package:flutter/material.dart';

class RowDesign extends StatefulWidget {
  const RowDesign({Key? key}) : super(key: key);

  @override
  State<RowDesign> createState() => _RowDesignState();
}

class _RowDesignState extends State<RowDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Row(
          children: const [
            RotatedBox(
              quarterTurns: 3,
              child: FlutterLogo(
                size: 150,
              ),
            ),
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.blueAccent,
            ),
            FlutterLogo(
              size: 150,
            ),
          ],
        ),
      ),
    );
  }
}
