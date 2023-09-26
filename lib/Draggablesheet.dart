import 'package:flutter/material.dart';

class DraggableScrollableSheetDesign extends StatefulWidget {
  const DraggableScrollableSheetDesign({Key? key}) : super(key: key);

  @override
  State<DraggableScrollableSheetDesign> createState() =>
      _DraggableScrollableSheetDesignState();
}

class _DraggableScrollableSheetDesignState
    extends State<DraggableScrollableSheetDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DraggableScrollableSheet(
        initialChildSize: 0.2,
        minChildSize: 0.2,
        maxChildSize: 0.9,
        builder: (context, controller) {
          return Container(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
            decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
            ),
            child: ListView.builder(
              itemCount: 25,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                      Spacer(),
                      Text(
                        "Draggable Scrollable Sheet",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
