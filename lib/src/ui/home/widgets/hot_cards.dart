import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:freshcut_challenge/src/common/common.dart';
import 'package:freshcut_challenge/src/data/model/hot_card_model.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HotCards extends StatelessWidget {
  const HotCards({
    Key? key,
    required this.hotCard,
  }) : super(key: key);

  final HotCardModel hotCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 403,
      width: 345,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(32),
        ),
        border: GradientBoxBorder(
          gradient: LinearGradient(
            colors: [
              hotCard.primaryColor.withOpacity(0.20),
              Colors.transparent
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          width: 1.7,
        ),
        gradient: RadialGradient(
          colors: [
            hotCard.primaryColor.withOpacity(0.20),
            const Color(0xff28262C).withOpacity(0.20),
          ],
          center: Alignment.topLeft,
          radius: 1.6,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(32),
          ),
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.05),
              const Color(0xff28262C).withOpacity(0.1)
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  hotCard.imagePath,
                  width: 321,
                  height: 288,
                ),
                Positioned(
                  bottom: -32,
                  right: 20,
                  child: ClipOval(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 3.0,
                        sigmaY: 3.0,
                      ),
                      child: Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(0.28),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.15),
                              width: 1,
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
            Text(
              hotCard.title,
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 2),
            Row(
              children: [
                Text(
                  '+${hotCard.newVideos} New Videos',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: hotCard.totalVideos != hotCard.watchedVideos
                        ? FreshCutColors.kSunGold
                        : const Color(0xff8C8797),
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.remove_red_eye_outlined,
                  color: hotCard.watchedVideos == 0
                      ? FreshCutColors.kSunGold
                      : const Color(0xff8C8797),
                  size: 12,
                ),
                const SizedBox(width: 2),
                Text(
                  '${hotCard.watchedVideos}/${hotCard.totalVideos}',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: hotCard.watchedVideos == 0
                        ? FreshCutColors.kSunGold
                        : const Color(0xff8C8797),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            LinearPercentIndicator(
              percent: hotCard.watchedVideos / hotCard.totalVideos,
              padding: EdgeInsets.zero,
              lineHeight: 4,
              barRadius: const Radius.circular(4),
              backgroundColor: Colors.white10,
              linearGradient: LinearGradient(
                stops: const [0.9, 0.95],
                colors: [
                  FreshCutColors.kSunGold,
                  hotCard.totalVideos != hotCard.watchedVideos
                      ? Colors.white
                      : FreshCutColors.kSunGold,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
