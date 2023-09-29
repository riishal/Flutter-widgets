import 'package:flutter/material.dart';

class NestedScrollViewDesign extends StatefulWidget {
  const NestedScrollViewDesign({Key? key}) : super(key: key);

  @override
  State<NestedScrollViewDesign> createState() => _NestedScrollViewDesignState();
}

class _NestedScrollViewDesignState extends State<NestedScrollViewDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.purple,
              title: const Text(
                "Floating Nested Sliver App",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              floating: true,
              expandedHeight: 50,
              forceElevated: innerBoxIsScrolled,
            ),
          ];
        },
        body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return Container(
              height: 60,
              color: Colors.pink,
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              alignment: Alignment.center,
              child: Text("Item ${index + 1}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  )),
            );
          },
        ),
      ),
    );
  }
}
