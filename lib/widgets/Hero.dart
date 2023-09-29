import 'package:flutter/material.dart';

class HeroDesign extends StatefulWidget {
  const HeroDesign({Key? key}) : super(key: key);

  @override
  State<HeroDesign> createState() => _HeroDesignState();
}

class _HeroDesignState extends State<HeroDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("First Page"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            nextPage(context);
          },
          child: Hero(
            tag: "hero_rectangle",
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                rectangleWidget(
                  const Size(80, 80),
                  Colors.purple,
                ),
                const Text(
                  "Hero",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void nextPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.pink,
            title: const Text("Second Page"),
          ),
          body: Center(
            child: Hero(
                tag: "hero_rectangle",
                child: rectangleWidget(const Size(300, 500), Colors.pink)),
          ),
        ),
      ),
    );
  }

  Widget rectangleWidget(Size size, Color color) {
    return Container(
      height: size.height,
      width: size.width,
      color: color,
    );
  }
}
