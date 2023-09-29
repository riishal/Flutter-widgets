import 'package:flutter/material.dart';

class StepperDesign extends StatefulWidget {
  const StepperDesign({Key? key}) : super(key: key);

  @override
  State<StepperDesign> createState() => _StepperDesignState();
}

class _StepperDesignState extends State<StepperDesign> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "My Coding Secrets",
            style: TextStyle(
              color: Colors.pink,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          Theme(
            data: ThemeData(
                colorScheme: const ColorScheme.dark(
              background: Colors.pink,
            )),
            child: Stepper(
              currentStep: _index,
              onStepCancel: () {
                if (_index >= 1) {
                  setState(() {
                    _index -= 1;
                  });
                }
              },
              onStepContinue: () {
                if (_index <= 2) {
                  setState(() {
                    _index += 1;
                  });
                }
              },
              onStepTapped: (int index) {
                setState(() {
                  _index = index;
                });
              },
              steps: const [
                Step(
                  title: Text(
                    "Step 1",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  content: Text(
                    "Watch Youtube and code along",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 17,
                    ),
                  ),
                ),
                Step(
                  title: Text(
                    "Step 2",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  content: Text(
                    "Learn Dart and Flutter Basics",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 17,
                    ),
                  ),
                ),
                Step(
                  title: Text(
                    "Step 3",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  content: Text(
                    "Pick any UI Design",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 17,
                    ),
                  ),
                ),
                Step(
                  title: Text(
                    "Step 4",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  content: Text(
                    "Practice, practice and practice",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
