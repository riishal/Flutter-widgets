import 'package:flutter/material.dart';

class ScrollBarDesign extends StatefulWidget {
  const ScrollBarDesign({Key? key}) : super(key: key);

  @override
  State<ScrollBarDesign> createState() => _ScrollBarDesignState();
}

class _ScrollBarDesignState extends State<ScrollBarDesign> {
  final ScrollController _firstController = ScrollController();
  List<Color> colors = [
    Colors.pink,
    Colors.indigo,
    Colors.amber,
    Colors.teal,
    Colors.purple,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                SizedBox(
                  width: constraints.maxWidth / 2 - 20,
                  child: Scrollbar(
                    child: ListView.builder(
                      controller: _firstController,
                      itemCount: colors.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 150,
                          color: colors[index],
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: constraints.maxWidth / 2 - 20,
                  child: Scrollbar(
                    child: ListView.builder(
                      itemCount: colors.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 150,
                          color: colors[index],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
