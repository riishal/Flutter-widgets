import 'package:flutter/material.dart';

class ColumnDesign extends StatefulWidget {
  const ColumnDesign({Key? key}) : super(key: key);

  @override
  State<ColumnDesign> createState() => _ColumnDesignState();
}

class _ColumnDesignState extends State<ColumnDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              columnWidget(context, "One", Colors.purple),
              columnWidget(context, "Two", Colors.blue),
              columnWidget(context, "Three", Colors.yellow),
              columnWidget(context, "Four", Colors.red),
              columnWidget(context, "Five", Colors.green),
            ],
          ),
        ),
      ),
    );
  }

  Widget columnWidget(BuildContext context, String text, Color color) {
    return Container(
      margin: const EdgeInsets.all(12),
      alignment: Alignment.center,
      height: 50,
      width: 280,
      color: color,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          letterSpacing: 5,
        ),
      ),
    );
  }
}
