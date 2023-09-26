import 'package:flutter/material.dart';

class BottomSheetDesign extends StatefulWidget {
  const BottomSheetDesign({Key? key}) : super(key: key);

  @override
  State<BottomSheetDesign> createState() => _BottomSheetDesignState();
}

class _BottomSheetDesignState extends State<BottomSheetDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: Colors.black,
                context: context,
                builder: (context) {
                  return Container(
                    padding: const EdgeInsets.all(20),
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.green.shade900,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 30,
                          child: Icon(
                            Icons.emoji_nature,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.green,
                          ),
                          child: const Text(
                            "Close Modal Bottom Sheet",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  );
                });
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.green.shade900,
          ),
          child: const Text("Show Modal Bottom Sheet"),
        ),
      ),
    );
  }
}
