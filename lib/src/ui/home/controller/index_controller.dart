import 'package:riverpod/riverpod.dart';

class BottomNavIndexNotifier extends StateNotifier<FreshCutBottomNavType> {
  BottomNavIndexNotifier({required this.index}) : super(index);

  final FreshCutBottomNavType index;

  void onTap(FreshCutBottomNavType value) {
    state = value;
  }
}

enum FreshCutBottomNavType {
  hot,
  discover,
  watch,
  activity,
  profile,
}

final bottomNavIndexProvider =
    StateNotifierProvider<BottomNavIndexNotifier, FreshCutBottomNavType>((ref) {
  return BottomNavIndexNotifier(index: FreshCutBottomNavType.hot);
});
