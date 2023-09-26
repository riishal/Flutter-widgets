import 'package:flutter/material.dart';

class DividerDesign extends StatefulWidget {
  const DividerDesign({Key? key}) : super(key: key);

  @override
  State<DividerDesign> createState() => _DividerDesignState();
}

class _DividerDesignState extends State<DividerDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: const [
            Text(
              "1",
              style: TextStyle(
                color: Colors.pink,
                fontSize: 150,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              height: 10,
              thickness: 10,
              color: Colors.amber,
              indent: 20,
              endIndent: 20,
            ),
            Text(
              "2",
              style: TextStyle(
                color: Colors.purple,
                fontSize: 150,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
