import 'package:flutter/material.dart';

class AppBarDesign extends StatefulWidget {
  const AppBarDesign({Key? key}) : super(key: key);

  @override
  State<AppBarDesign> createState() => _AppBarDesignState();
}

class _AppBarDesignState extends State<AppBarDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Flutter AppBar"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green, Colors.pink],
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: "Show snackbar",
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("You have a notification"),
                  backgroundColor: Colors.pink,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
