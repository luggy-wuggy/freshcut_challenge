import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:freshcut_challenge/src/common/common.dart';
import 'package:freshcut_challenge/src/ui/ui.dart';

class RootView extends ConsumerWidget {
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomNav = ref.watch(bottomNavIndexProvider);

    return Scaffold(
      backgroundColor: FreshCutColors.kBackgroundColor,
      bottomNavigationBar: const FreshCutBottomNav(),
      extendBody: true,
      body: IndexedStack(
        index: FreshCutBottomNavType.values.indexOf(bottomNav),
        children: const [
          HotView(),
          DiscoveryView(),
          WatchView(),
          ActivityView(),
          ProfileView(),
        ],
      ),
    );
  }
}
