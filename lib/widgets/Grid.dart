import 'package:flutter/material.dart';

class GridViewDesign extends StatefulWidget {
  const GridViewDesign({Key? key}) : super(key: key);

  @override
  State<GridViewDesign> createState() => _GridViewDesignState();
}

class _GridViewDesignState extends State<GridViewDesign> {
  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.brown,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              "GridView",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            gridViewWidget(),
            const Text(
              "Dynamic GridView",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            dynamicGridViewWidget(),
          ],
        ),
      ),
    );
  }

  Widget dynamicGridViewWidget() {
    return Container(
      height: 250,
      width: 150,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Container(
            color: colors[index],
          );
        },
      ),
    );
  }

  Widget gridViewWidget() {
    return Container(
      height: 250,
      width: 170,
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.purple,
          ),
          Container(
            color: Colors.brown,
          ),
        ],
      ),
    );
  }
}
