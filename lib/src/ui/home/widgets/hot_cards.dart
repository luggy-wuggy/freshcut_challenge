import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:freshcut_challenge/src/common/common.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HotCards extends StatelessWidget {
  const HotCards({
    Key? key,
    required this.primaryColor,
  }) : super(key: key);

  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 403,
      width: 345,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(32),
        ),
        border: GradientBoxBorder(
          gradient: LinearGradient(
            colors: [primaryColor.withOpacity(0.20), Colors.transparent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          width: 1.7,
        ),
        gradient: RadialGradient(
          colors: [
            primaryColor.withOpacity(0.20),
            const Color(0xff28262C).withOpacity(0.20),
          ],
          center: Alignment.topLeft,
          radius: 1.6,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                'assets/images/smash.png',
                width: 321,
                height: 288,
              ),
              Positioned(
                bottom: -32,
                right: 20,
                child: ClipOval(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 5.0,
                      sigmaY: 5.0,
                    ),
                    child: Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.26),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.15),
                            width: 1.5,
                          )),
                      child: const Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'Smash Stockpile',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 2),
          Row(
            children: const [
              Text(
                '+10 New Videos',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: FreshCutColors.kSunGold,
                ),
              ),
              Spacer(),
              Icon(
                Icons.remove_red_eye_outlined,
                color: Color(0xff8C8797),
                size: 12,
              ),
              SizedBox(width: 2),
              Text(
                '15/30',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8C8797),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          LinearPercentIndicator(
            percent: 0.5,
            padding: EdgeInsets.zero,
            lineHeight: 4,
            barRadius: const Radius.circular(4),
            backgroundColor: Colors.white10,
            linearGradient: const LinearGradient(
              stops: [0.9, 0.95],
              colors: [
                FreshCutColors.kSunGold,
                Colors.white,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
