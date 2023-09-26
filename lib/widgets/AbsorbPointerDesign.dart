import 'package:flutter/material.dart';

class AbsorbPointerDesign extends StatefulWidget {
  const AbsorbPointerDesign({Key? key}) : super(key: key);

  @override
  State<AbsorbPointerDesign> createState() => _AbsorbPointerDesignState();
}

class _AbsorbPointerDesignState extends State<AbsorbPointerDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                ),
                onPressed: () {},
                child: null,
              ),
            ),
            SizedBox(
              width: 150,
              height: 300,
              child: AbsorbPointer(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                  ),
                  onPressed: () {},
                  child: null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
