import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:freshcut_challenge/src/common/common.dart';
import 'package:freshcut_challenge/src/ui/root/root.dart';

class FreshCutBottomNav extends ConsumerWidget {
  const FreshCutBottomNav({Key? key}) : super(key: key);
  final double sizeIcon = 24;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomNav = ref.watch(bottomNavIndexProvider);

    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5.0,
          sigmaY: 5.0,
        ),
        child: BottomNavigationBar(
          backgroundColor: FreshCutColors.kBackgroundColor.withOpacity(0.9),
          currentIndex: FreshCutBottomNavType.values.indexOf(bottomNav),
          onTap: (int index) {
            final bottomNavType = FreshCutBottomNavType.values[index];

            ref.read(bottomNavIndexProvider.notifier).onTap(bottomNavType);
          },
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: FreshCutColors.kSunGold,
          items: [
            BottomNavigationBarItem(
              label: "Hot",
              icon: Padding(
                padding: const EdgeInsets.all(5.0),
                child: CustomPaint(
                  size: Size(
                    sizeIcon,
                    (sizeIcon * 1.1666666666666667).toDouble(),
                  ),
                  painter: TodayIconPainter(
                    backgroundColor: bottomNav == FreshCutBottomNavType.hot
                        ? FreshCutColors.kSunGold
                        : Colors.transparent,
                    borderColor: bottomNav == FreshCutBottomNavType.hot
                        ? FreshCutColors.kSunGold
                        : FreshCutColors.kGreyedOut,
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Discover",
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomPaint(
                  size: Size(
                    sizeIcon,
                    (sizeIcon * 0.96).toDouble(),
                  ),
                  painter: DiscoverIconPainter(
                    borderColor: bottomNav == FreshCutBottomNavType.discover
                        ? FreshCutColors.kSunGold
                        : FreshCutColors.kGreyedOut,
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Watch",
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomPaint(
                  size: Size(sizeIcon, (sizeIcon * 0.96).toDouble()),
                  painter: WatchIconPainter(
                    borderColor: bottomNav == FreshCutBottomNavType.watch
                        ? FreshCutColors.kSunGold
                        : FreshCutColors.kGreyedOut,
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Activity",
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomPaint(
                  size: Size(sizeIcon, (sizeIcon * 0.96).toDouble()),
                  painter: InboxIconPainter(
                    borderColor: bottomNav == FreshCutBottomNavType.activity
                        ? FreshCutColors.kSunGold
                        : FreshCutColors.kGreyedOut,
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: sizeIcon - 3,
                  width: sizeIcon - 3,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: bottomNav == FreshCutBottomNavType.profile
                          ? FreshCutColors.kSunGold
                          : FreshCutColors.kGreyedOut,
                      width: 1.8,
                    ),
                  ),
                  child: Image.asset('assets/images/profile.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
