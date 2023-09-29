import 'package:flutter/material.dart';

class DraggableDesign extends StatefulWidget {
  const DraggableDesign({Key? key}) : super(key: key);

  @override
  State<DraggableDesign> createState() => _DraggableDesignState();
}

class _DraggableDesignState extends State<DraggableDesign> {
  int acceptedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Draggable(
              data: 1,
              feedback: Container(
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(30)),
                height: 100,
                width: 100,
                child: const Icon(Icons.directions_run),
              ),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(30)),
                child: const Center(
                  child: Text(
                    "Draggable",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              childWhenDragging: Container(
                height: 100,
                width: 100,
                color: Colors.purple,
                child: const Center(
                  child: Text(
                    "Dragging",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            DragTarget(
              builder: (context, accepted, rejected) {
                return Container(
                  height: 100,
                  width: 100,
                  color: Colors.pink.shade500,
                  child: Center(
                    child: Text(
                      "$acceptedIndex",
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
              onAccept: (int index) {
                setState(() {
                  acceptedIndex += index;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
