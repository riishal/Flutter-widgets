import 'package:flutter/material.dart';

class SingleChildScrollViewDesign extends StatefulWidget {
  const SingleChildScrollViewDesign({Key? key}) : super(key: key);

  @override
  State<SingleChildScrollViewDesign> createState() =>
      _SingleChildScrollViewDesignState();
}

class _SingleChildScrollViewDesignState
    extends State<SingleChildScrollViewDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            containerWidget(),
            containerWidget(),
            containerWidget(),
            containerWidget(),
            containerWidget(),
          ],
        ),
      ),
    );
  }

  Widget containerWidget() {
    return Container(
      height: 200,
      color: Colors.amber,
      alignment: Alignment.center,
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: const Text(
        "Scrollable Column",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          letterSpacing: 2,
        ),
      ),
    );
  }
}
