import 'package:flutter/material.dart';

import 'package:freshcut_challenge/src/common/common.dart';
import 'package:freshcut_challenge/src/data/model/model.dart';
import 'package:freshcut_challenge/src/ui/ui.dart';

class HotView extends StatelessWidget {
  const HotView({Key? key}) : super(key: key);

  final double sizeIcon = 24;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 132),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Trending Today 🔥',
                style: TextStyle(
                  fontSize: 34.0,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()
                    ..shader = const LinearGradient(
                      colors: <Color>[
                        FreshCutColors.kSunGold,
                        Color(0xffD93636),
                      ],
                    ).createShader(
                      const Rect.fromLTWH(0.0, 0.0, 250.0, 70.0),
                    ),
                ),
              ),
              const SizedBox(height: 34),
              ...hotCardList.map(
                (e) => Column(
                  children: [
                    HotCards(
                      hotCard: e,
                    ),
                    const SizedBox(height: 32)
                  ],
                ),
              ),
              Center(
                child: Image.asset(
                  'assets/images/verification.png',
                  width: 270,
                  height: 245,
                ),
              ),
              const Center(
                child: Text(
                  "Check back soon for new clips and creator content.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Center(
                child: Text(
                  'In the meantime join our discord.',
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffA19DAA),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              FreshCutLongButton(
                primaryColor: FreshCutColors.kSunGold,
                title: "Join Metaview Discord",
                onTap: () {},
                leading: Image.asset(
                  'assets/images/discord.png',
                  height: 24,
                  width: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
