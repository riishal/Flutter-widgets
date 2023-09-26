import 'package:flutter/material.dart';

class AlignDesign extends StatefulWidget {
  const AlignDesign({Key? key}) : super(key: key);

  @override
  State<AlignDesign> createState() => _AlignDesignState();
}

class _AlignDesignState extends State<AlignDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.pink,
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 200,
                  width: 200,
                  color: Colors.purple,
                  child: const Align(
                    alignment: Alignment(-0.77, 0.10),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.orange,
                  child: const Align(
                    alignment: FractionalOffset(0.7, 0.5),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
