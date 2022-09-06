import 'package:flutter/material.dart';
import 'package:freshcut_challenge/src/common/common.dart';
import 'package:freshcut_challenge/src/ui/home/home.dart';
import 'package:freshcut_challenge/src/ui/home/widgets/hot_cards.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  final double sizeIcon = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FreshCutColors.kBackgroundColor,
      bottomNavigationBar: const FreshCutBottomNav(),
      extendBody: true,
      body: SafeArea(
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
                          Color(0xffF2BC3D),
                          Color(0xffD93636),
                        ],
                      ).createShader(
                        const Rect.fromLTWH(0.0, 0.0, 250.0, 70.0),
                      ),
                  ),
                ),
                const SizedBox(height: 34),
                const HotCards(),
                const SizedBox(height: 32),
                const HotCards(),
                const SizedBox(height: 32),
                const HotCards(),
                const SizedBox(height: 32),
                const HotCards(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
