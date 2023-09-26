import 'package:flutter/material.dart';

class CustomPaintDesign extends StatefulWidget {
  const CustomPaintDesign({Key? key}) : super(key: key);

  @override
  State<CustomPaintDesign> createState() => _CustomPaintDesignState();
}

class _CustomPaintDesignState extends State<CustomPaintDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: CustomPaint(
          painter: ShapePainter(),
          child: Container(),
        ),
      ),
    );
  }
}

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.orange;
    paint.strokeWidth = 200;
    paint.style = PaintingStyle.stroke;
    paint.strokeCap = StrokeCap.square;

    Offset center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, 50, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
