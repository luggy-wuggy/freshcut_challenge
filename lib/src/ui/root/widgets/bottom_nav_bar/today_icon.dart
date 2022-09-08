import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*1.1666666666666667).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class TodayIconPainter extends CustomPainter {
  final Color backgroundColor;
  final Color borderColor;

  TodayIconPainter({required this.borderColor, required this.backgroundColor});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7625067, size.height * 0.5142914);
    path_0.cubicTo(
        size.width * 0.7625067,
        size.height * 0.4563229,
        size.width * 0.7373300,
        size.height * 0.4033971,
        size.width * 0.6958400,
        size.height * 0.3631029);
    path_0.cubicTo(
        size.width * 0.6291733,
        size.height * 0.4571486,
        size.width * 0.5291733,
        size.height * 0.4857200,
        size.width * 0.5291733,
        size.height * 0.4857200);
    path_0.cubicTo(
        size.width * 0.5895100,
        size.height * 0.4167657,
        size.width * 0.5905767,
        size.height * 0.3497371,
        size.width * 0.5675433,
        size.height * 0.2940771);
    path_0.cubicTo(
        size.width * 0.5447633,
        size.height * 0.2390369,
        size.width * 0.4984167,
        size.height * 0.1951120,
        size.width * 0.4625067,
        size.height * 0.1714354);
    path_0.cubicTo(
        size.width * 0.4458400,
        size.height * 0.2428640,
        size.width * 0.4211133,
        size.height * 0.2649214,
        size.width * 0.2958403,
        size.height * 0.3857200);
    path_0.cubicTo(
        size.width * 0.1625073,
        size.height * 0.5142914,
        size.width * 0.2625070,
        size.height * 0.6857200,
        size.width * 0.3958400,
        size.height * 0.7428629);
    path_0.cubicTo(
        size.width * 0.3625067,
        size.height * 0.6571486,
        size.width * 0.4125067,
        size.height * 0.5571486,
        size.width * 0.4125067,
        size.height * 0.5571486);
    path_0.cubicTo(
        size.width * 0.4291733,
        size.height * 0.6571486,
        size.width * 0.5125067,
        size.height * 0.7142914,
        size.width * 0.5791733,
        size.height * 0.7428629);
    path_0.cubicTo(
        size.width * 0.6958400,
        size.height * 0.6857200,
        size.width * 0.7625067,
        size.height * 0.6207971,
        size.width * 0.7625067,
        size.height * 0.5142914);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = backgroundColor;
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.7625067, size.height * 0.5142914);
    path_1.cubicTo(
        size.width * 0.7625067,
        size.height * 0.4563229,
        size.width * 0.7373300,
        size.height * 0.4033971,
        size.width * 0.6958400,
        size.height * 0.3631029);
    path_1.cubicTo(
        size.width * 0.6291733,
        size.height * 0.4571486,
        size.width * 0.5291733,
        size.height * 0.4857200,
        size.width * 0.5291733,
        size.height * 0.4857200);
    path_1.cubicTo(
        size.width * 0.5895100,
        size.height * 0.4167657,
        size.width * 0.5905767,
        size.height * 0.3497371,
        size.width * 0.5675433,
        size.height * 0.2940771);
    path_1.cubicTo(
        size.width * 0.5447633,
        size.height * 0.2390369,
        size.width * 0.4984167,
        size.height * 0.1951120,
        size.width * 0.4625067,
        size.height * 0.1714354);
    path_1.cubicTo(
        size.width * 0.4458400,
        size.height * 0.2428640,
        size.width * 0.4211133,
        size.height * 0.2649214,
        size.width * 0.2958403,
        size.height * 0.3857200);
    path_1.cubicTo(
        size.width * 0.1625073,
        size.height * 0.5142914,
        size.width * 0.2625070,
        size.height * 0.6857200,
        size.width * 0.3958400,
        size.height * 0.7428629);
    path_1.cubicTo(
        size.width * 0.3625067,
        size.height * 0.6571486,
        size.width * 0.4125067,
        size.height * 0.5571486,
        size.width * 0.4125067,
        size.height * 0.5571486);
    path_1.cubicTo(
        size.width * 0.4291733,
        size.height * 0.6571486,
        size.width * 0.5125067,
        size.height * 0.7142914,
        size.width * 0.5791733,
        size.height * 0.7428629);
    path_1.cubicTo(
        size.width * 0.6958400,
        size.height * 0.6857200,
        size.width * 0.7625067,
        size.height * 0.6207971,
        size.width * 0.7625067,
        size.height * 0.5142914);
    path_1.close();

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.05;
    paint1Stroke.color = borderColor;
    canvas.drawPath(path_1, paint1Stroke);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = backgroundColor;
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
