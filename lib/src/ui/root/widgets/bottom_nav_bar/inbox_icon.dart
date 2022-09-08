import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*0.96).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class InboxIconPainter extends CustomPainter {
  final Color borderColor;

  InboxIconPainter({required this.borderColor});

  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.8240000, size.height * 0.6375000);
    path0.cubicTo(
        size.width * 0.8478040,
        size.height * 0.5884125,
        size.width * 0.8601360,
        size.height * 0.5341625,
        size.width * 0.8600000,
        size.height * 0.4791667);
    path0.lineTo(size.width * 0.8600000, size.height * 0.4583333);
    path0.cubicTo(
        size.width * 0.8554000,
        size.height * 0.3714867,
        size.width * 0.8202080,
        size.height * 0.2894579,
        size.width * 0.7611640,
        size.height * 0.2279537);
    path0.cubicTo(
        size.width * 0.7021200,
        size.height * 0.1664496,
        size.width * 0.6233720,
        size.height * 0.1297925,
        size.width * 0.5400000,
        size.height * 0.1250013);
    path0.lineTo(size.width * 0.5200000, size.height * 0.1250013);
    path0.cubicTo(
        size.width * 0.4672040,
        size.height * 0.1248579,
        size.width * 0.4151240,
        size.height * 0.1377067,
        size.width * 0.3680000,
        size.height * 0.1625013);
    path0.cubicTo(
        size.width * 0.3115300,
        size.height * 0.1919000,
        size.width * 0.2640332,
        size.height * 0.2370950,
        size.width * 0.2308288,
        size.height * 0.2930242);
    path0.cubicTo(
        size.width * 0.1976244,
        size.height * 0.3489533,
        size.width * 0.1800244,
        size.height * 0.4134079,
        size.width * 0.1800000,
        size.height * 0.4791667);
    path0.cubicTo(
        size.width * 0.1798624,
        size.height * 0.5341625,
        size.width * 0.1921972,
        size.height * 0.5884125,
        size.width * 0.2160000,
        size.height * 0.6375000);
    path0.lineTo(size.width * 0.1400000, size.height * 0.8750000);
    path0.lineTo(size.width * 0.3680000, size.height * 0.7958333);
    path0.cubicTo(
        size.width * 0.3921720,
        size.height * 0.8085542,
        size.width * 0.4176480,
        size.height * 0.8181292,
        size.width * 0.4438560,
        size.height * 0.8244167);
    path0.cubicTo(
        size.width * 0.4687400,
        size.height * 0.8303917,
        size.width * 0.4942840,
        size.height * 0.8334042,
        size.width * 0.5200000,
        size.height * 0.8333333);
    path0.cubicTo(
        size.width * 0.5831280,
        size.height * 0.8333083,
        size.width * 0.6450040,
        size.height * 0.8149750,
        size.width * 0.6986960,
        size.height * 0.7803875);
    path0.cubicTo(
        size.width * 0.7523920,
        size.height * 0.7458000,
        size.width * 0.7957760,
        size.height * 0.6963250,
        size.width * 0.8240000,
        size.height * 0.6375000);
    path0.close();

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.06000000;
    paint0Stroke.color = borderColor;
    paint0Stroke.strokeCap = StrokeCap.round;
    canvas.drawPath(path0, paint0Stroke);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.transparent;
    canvas.drawPath(path0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.3400000, size.height * 0.3541667);
    path_1.lineTo(size.width * 0.7000000, size.height * 0.3541667);
    path_1.moveTo(size.width * 0.3400000, size.height * 0.4791667);
    path_1.lineTo(size.width * 0.7000000, size.height * 0.4791667);

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.05000000;
    paint1Stroke.color = borderColor;
    canvas.drawPath(path_1, paint1Stroke);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = Colors.transparent;
    canvas.drawPath(path_1, paint1Fill);

    Path path2 = Path();
    path2.moveTo(size.width * 0.3400000, size.height * 0.6041667);
    path2.lineTo(size.width * 0.5400000, size.height * 0.6041667);

    Paint paint2Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.05000000;
    paint2Stroke.color = borderColor;
    canvas.drawPath(path2, paint2Stroke);

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = Colors.transparent;
    canvas.drawPath(path2, paint2Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
