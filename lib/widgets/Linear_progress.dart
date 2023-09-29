import 'package:flutter/material.dart';

class LinearProgressIndicatorDesign extends StatefulWidget {
  const LinearProgressIndicatorDesign({Key? key}) : super(key: key);

  @override
  State<LinearProgressIndicatorDesign> createState() =>
      _LinearProgressIndicatorDesignState();
}

class _LinearProgressIndicatorDesignState
    extends State<LinearProgressIndicatorDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                "Please Wait till Upload",
                style: TextStyle(
                  color: Colors.amber,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              LinearProgressIndicator(
                backgroundColor: Colors.pink,
                color: Colors.amber,
                value: 0.5,
                minHeight: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
