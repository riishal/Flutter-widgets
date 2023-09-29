import 'package:flutter/material.dart';

class ListViewDesign extends StatefulWidget {
  const ListViewDesign({Key? key}) : super(key: key);

  @override
  State<ListViewDesign> createState() => _ListViewDesignState();
}

class _ListViewDesignState extends State<ListViewDesign> {
  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.purple,
    Colors.brown,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "ListView",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          listViewWidget(),
          const Text(
            "Dynamic ListView",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          dynamicListViewWidget(),
        ],
      ),
    );
  }

  Widget dynamicListViewWidget() {
    return Container(
      height: 280,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Container(
            height: 40,
            margin: const EdgeInsets.only(bottom: 5),
            alignment: Alignment.center,
            color: colors[index],
          );
        },
      ),
    );
  }

  Widget listViewWidget() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 280,
      child: ListView(
        children: [
          Container(
            height: 40,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 5),
            color: Colors.red,
          ),
          Container(
            height: 40,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 5),
            color: Colors.blue,
          ),
          Container(
            height: 40,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 5),
            color: Colors.green,
          ),
          Container(
            height: 40,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 5),
            color: Colors.purple,
          ),
          Container(
            height: 40,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(bottom: 5),
            color: Colors.brown,
          ),
        ],
      ),
    );
  }
}
