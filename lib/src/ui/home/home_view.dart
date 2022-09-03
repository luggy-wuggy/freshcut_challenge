import 'package:flutter/material.dart';
import 'package:freshcut_challenge/src/common/common.dart';
import 'package:freshcut_challenge/src/ui/home/home.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  final double sizeIcon = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FreshCutColors.kBackgroundColor,
      bottomNavigationBar: const FreshCutBottomNav(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
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
            ],
          ),
        ),
      ),
    );
  }
}
