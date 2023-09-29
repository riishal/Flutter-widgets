import 'package:flutter/material.dart';

class IconButtonDesign extends StatefulWidget {
  const IconButtonDesign({Key? key}) : super(key: key);

  @override
  State<IconButtonDesign> createState() => _IconButtonDesignState();
}

class _IconButtonDesignState extends State<IconButtonDesign> {
  late int _volume = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.purple,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          _volume += 10;
                        });
                      },
                      icon: const Icon(
                        Icons.volume_up,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                  const Text(
                    "Press IconButton to Increase Volume Count",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Text(
                "Volume: $_volume",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
