import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class FreshCutLongButton extends StatelessWidget {
  const FreshCutLongButton({
    Key? key,
    required this.primaryColor,
    required this.title,
    required this.onTap,
    this.leading,
  }) : super(key: key);
  final Color primaryColor;
  final String title;
  final Function onTap;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 345,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            primaryColor.withOpacity(0.45),
            const Color(0xff392904).withOpacity(0.3),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        border: GradientBoxBorder(
          gradient: LinearGradient(
            colors: [
              primaryColor,
              const Color(0xff392904),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          width: 0.5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(56)),
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          leading == null ? const SizedBox.shrink() : leading!,
          leading == null ? const SizedBox.shrink() : const SizedBox(width: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
