import 'package:flutter/material.dart';

class ClipPathDesign extends StatefulWidget {
  const ClipPathDesign({Key? key}) : super(key: key);

  @override
  State<ClipPathDesign> createState() => _ClipPathDesignState();
}

class _ClipPathDesignState extends State<ClipPathDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ClipPath(
          clipper: CustomClipperDesign(),
          child: Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.purple,
                  Colors.yellow,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomClipperDesign extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double width = size.width;
    double height = size.height;

    path.lineTo(0, height);
    path.lineTo(width / 4, height);
    path.lineTo(width / 4, height - 120);
    path.lineTo(width - 50, height);
    path.lineTo(width, height);
    path.lineTo(width, 0);
    path.lineTo(width - 50, 0);
    path.lineTo(width - 50, 120);
    path.lineTo(width / 4, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
