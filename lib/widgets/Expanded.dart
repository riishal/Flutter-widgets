import 'package:flutter/material.dart';

class ExpandedDesign extends StatefulWidget {
  const ExpandedDesign({Key? key}) : super(key: key);

  @override
  State<ExpandedDesign> createState() => _ExpandedDesignState();
}

class _ExpandedDesignState extends State<ExpandedDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            expandedExample(context),
            const SizedBox(
              height: 50,
            ),
            expandedExampleWithFlex(context),
          ],
        ),
      ),
    );
  }

  Widget expandedExampleWithFlex(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(6),
              alignment: Alignment.center,
              height: 100,
              color: Colors.red,
              child: const Text(
                "Expanded: flex 2",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            width: 50,
            color: Colors.purple,
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(6),
              alignment: Alignment.center,
              height: 100,
              color: Colors.orange,
              child: const Text(
                "Expanded: flex 1",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget expandedExample(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.pink,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                width: 100,
                color: Colors.indigo,
                child: const Text(
                  "Expanded",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
