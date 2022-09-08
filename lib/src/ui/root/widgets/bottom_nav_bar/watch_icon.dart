import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*0.96).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class WatchIconPainter extends CustomPainter {
  final Color borderColor;

  WatchIconPainter({required this.borderColor});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9000000, size.height * 0.9166667);
    path_0.lineTo(size.width * 0.1000000, size.height * 0.9166667);
    path_0.lineTo(size.width * 0.1000000, size.height * 0.4166667);
    path_0.lineTo(size.width * 0.5000000, size.height * 0.04166667);
    path_0.lineTo(size.width * 0.9000000, size.height * 0.4166667);
    path_0.lineTo(size.width * 0.9000000, size.height * 0.9166667);
    path_0.close();

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.06000000;
    paint0Stroke.color = borderColor;
    paint0Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_0, paint0Stroke);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.transparent;
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4050000, size.height * 0.7231333);
    path_1.lineTo(size.width * 0.4050000, size.height * 0.4018663);
    path_1.lineTo(size.width * 0.6448800, size.height * 0.5625000);
    path_1.lineTo(size.width * 0.4050000, size.height * 0.7231333);
    path_1.close();

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.05000000;
    paint1Stroke.color = borderColor;
    paint1Stroke.strokeCap = StrokeCap.round;
    canvas.drawPath(path_1, paint1Stroke);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = Colors.transparent;
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
