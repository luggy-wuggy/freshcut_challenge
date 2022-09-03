import 'package:flutter/material.dart';

import 'bottom_nav_bar.dart';

class FreshCutBottomNav extends StatelessWidget {
  const FreshCutBottomNav({Key? key}) : super(key: key);
  final double sizeIcon = 24;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
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
    );
  }
}
