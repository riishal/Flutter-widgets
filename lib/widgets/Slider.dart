import 'package:flutter/material.dart';

class SliderDesign extends StatefulWidget {
  const SliderDesign({Key? key}) : super(key: key);

  @override
  State<SliderDesign> createState() => _SliderDesignState();
}

class _SliderDesignState extends State<SliderDesign> {
  double value = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              min: 10,
              max: 100,
              value: value,
              activeColor: Colors.blue,
              inactiveColor: Colors.grey,
              thumbColor: Colors.black,
              onChanged: (double newValue) {
                setState(() {
                  value = newValue;
                });
              },
            ),
            Text(
              "${value.toInt()}%",
              style: const TextStyle(
                color: Colors.amber,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
