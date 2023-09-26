import 'package:flutter/material.dart';

class CheckBoxDesign extends StatefulWidget {
  const CheckBoxDesign({Key? key}) : super(key: key);

  @override
  State<CheckBoxDesign> createState() => _CheckBoxDesignState();
}

class _CheckBoxDesignState extends State<CheckBoxDesign> {
  bool _isChecked = false;
  bool _isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            const Text(
              "Todo",
              style: TextStyle(
                color: Colors.limeAccent,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  checkColor: Colors.black,
                  fillColor: MaterialStateProperty.all(Colors.limeAccent),
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                const Text(
                  "Sleep",
                  style: TextStyle(
                    color: Colors.limeAccent,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: _isChecked2,
                  checkColor: Colors.black,
                  fillColor: MaterialStateProperty.all(Colors.limeAccent),
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked2 = value!;
                    });
                  },
                ),
                const Text(
                  "Code",
                  style: TextStyle(
                    color: Colors.limeAccent,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
