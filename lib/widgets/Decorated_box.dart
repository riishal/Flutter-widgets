import 'package:flutter/material.dart';

class DecoratedBoxDesign extends StatefulWidget {
  const DecoratedBoxDesign({Key? key}) : super(key: key);

  @override
  State<DecoratedBoxDesign> createState() => _DecoratedBoxDesignState();
}

class _DecoratedBoxDesignState extends State<DecoratedBoxDesign> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                radius: 0.5,
                colors: [
                  Colors.orange,
                  Colors.black,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
