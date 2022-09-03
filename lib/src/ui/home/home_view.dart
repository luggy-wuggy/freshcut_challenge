import 'package:flutter/material.dart';
import 'package:freshcut_challenge/src/common/common.dart';
import 'package:freshcut_challenge/src/ui/home/widgets/discover_icon.dart';
import 'package:freshcut_challenge/src/ui/home/widgets/inbox_icon.dart';
import 'package:freshcut_challenge/src/ui/home/widgets/watch_icon.dart';

import 'widgets/today_icon.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  final double sizeIcon = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FreshCutColors.kBackgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: "Hot",
            icon: CustomPaint(
              size: Size(
                sizeIcon,
                (sizeIcon * 1.1666666666666667).toDouble(),
              ),
              painter: TodayIconPainter(
                color: const Color(0xffF2BC3D),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Discover",
            icon: CustomPaint(
              size: Size(
                sizeIcon,
                (sizeIcon * 0.96).toDouble(),
              ),
              painter: DiscoverIconPainter(),
            ),
          ),
          BottomNavigationBarItem(
            label: "Watch",
            icon: CustomPaint(
              size: Size(sizeIcon, (sizeIcon * 0.96).toDouble()),
              painter: WatchIconPainter(),
            ),
          ),
          BottomNavigationBarItem(
            label: "Inbox",
            icon: CustomPaint(
              size: Size(sizeIcon, (sizeIcon * 0.96).toDouble()),
              painter: InboxIconPainter(),
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Container(
              height: sizeIcon - 1.8,
              width: sizeIcon - 1.8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xff504C57),
                  width: 1.8,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
