import 'package:flutter/material.dart';

class CenterDesign extends StatefulWidget {
  const CenterDesign({Key? key}) : super(key: key);

  @override
  State<CenterDesign> createState() => _CenterDesignState();
}

class _CenterDesignState extends State<CenterDesign> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: FlutterLogo(
          size: 180,
        ),
      ),
    );
  }
}
