import 'package:flutter/material.dart';

class NavigatorDesign extends StatefulWidget {
  const NavigatorDesign({Key? key}) : super(key: key);

  @override
  State<NavigatorDesign> createState() => _NavigatorDesignState();
}

class _NavigatorDesignState extends State<NavigatorDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("First Page"),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            onPressed: () {
              navigatorWidget();
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
    );
  }

  void navigatorWidget() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Text("Second Page"),
            backgroundColor: Colors.pink,
          ),
        ),
      ),
    );
  }
}
